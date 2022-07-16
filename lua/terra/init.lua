local M = {}

---Change terra option (vim.g.terra_config.option)
---It can't be changed directly by modifing that field due to a Neovim lua bug with global variables (terra_config is a global variable)
-- TODO: type opt from TerraConfig
---@param opt string: option name
---@param value any: new value
function M.set_options(opt, value)
	local config = vim.g.terra_config
	config[opt] = value
	vim.g.terra_config = config
end

---Apply the colorscheme (same as ':colorscheme terra')
function M.colorscheme()
	-- Clear all highlights
	vim.cmd("hi clear")

	-- Reset syntax highlighting
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Set vim options
	vim.o.termguicolors = true
	vim.g.colors_name = "terra"

	-- If the global option `background` is set to `light` we set the terra config to "day"-time
	if vim.o.background == "light" then
		M.set_options("time", "day")
	end

	-- Now set up the highlights and terminal
	require("terra.highlights").setup()
	require("terra.terminal").setup()
end

---Syncs `time` of TerraConfig with `vim.o.background`
---@param time "day" | "night"
function M.sync_terra_time_with_vim_opt_background(time)
	if time == "day" then
		vim.o.background = "light"
	else
		vim.o.background = "dark"
	end
end

---Select a Terra Season
function M.select_season()
	-- TODO: Outsource to lib
	local capitalize = function(str)
		return string.gsub(" " .. str, "%W%l", string.upper):sub(2)
	end

	---Handle Season selection.
	---@param selected_season string|nil
	local handle_select_season = function(selected_season)
		-- Handle abort
		if selected_season == nil then
			return vim.notify("Aborted: No Season selected!")
		end

		-- TODO: Introduce notify() which uses the plugin in preference and falls back to vim.notify
		-- Give feedback to user about selected season
		vim.notify("Selected Season: '" .. capitalize(selected_season) .. "'")

		-- Update season opt in TerraConfig
		M.set_options("season", selected_season)

		-- Sync `TerraConfig.time` with `vim.opt.background`
		M.sync_terra_time_with_vim_opt_background(vim.g.terra_config.time)

		-- Re-Initialize colorscheme
		vim.api.nvim_command("colorscheme terra")
	end

	-- Open select menu to choose a Season
	vim.ui.select(vim.g.terra_config.enabled_seasons, {
		prompt = "Choose a Season",
		format_item = function(item)
			return capitalize(item)
		end,
	}, handle_select_season)
end

---Setup terra.nvim options, without applying colorscheme
---@param opts table: a table containing options
function M.setup(opts)
	local default_config = require("terra.config").default_config

	-- If it's the first time setup() is called, load the default config
	if not vim.g.terra_config or not vim.g.terra_config.loaded then
		vim.g.terra_config = vim.tbl_deep_extend(
			"keep",
			vim.g.terra_config or {},
			default_config
		)

		-- Mark the theme as loaded
		M.set_options("loaded", true)

		-- Toggle the first style
		M.set_options("toggle_style_index", 0)
	end

	-- If there are defined options, set them in the global config
	if opts then
		vim.g.terra_config = vim.tbl_deep_extend("force", vim.g.terra_config, opts)

		if opts.enabled_seasons then -- this table cannot be extended, it has to be replaced
			M.set_options("enabled_seasons", opts.enabled_seasons)
		end
	end

	-- Set the toggle style key from config
	vim.api.nvim_set_keymap(
		"n",
		vim.g.terra_config.select_season,
		'<cmd>lua require("terra").select_season()<CR>',
		{ noremap = true, silent = true }
	)
end

function M.load()
	vim.api.nvim_command("colorscheme terra")
end

return M
