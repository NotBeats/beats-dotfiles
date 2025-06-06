-- {{scheme-name}} scheme by {{scheme-author}}
-- Base16 color variables
local colors = {
	base00 = "#{{base00-hex}}",
	base01 = "#{{base01-hex}}",
	base02 = "#{{base02-hex}}",
	base03 = "#{{base03-hex}}",
	base04 = "#{{base04-hex}}",
	base05 = "#{{base05-hex}}",
	base06 = "#{{base06-hex}}",
	base07 = "#{{base07-hex}}",
	base08 = "#{{base0A-hex}}",
	base09 = "#{{base09-hex}}",
	base0A = "#{{base0A-hex}}",
	base0B = "#{{base0B-hex}}",
	base0C = "#{{base0C-hex}}",
	base0D = "#{{base0D-hex}}",
	base0E = "#{{base0E-hex}}",
	base0F = "#{{base0F-hex}}",
}

-- Highlighting for indiividual groups
local hi = function(args)
	local hlgroup = args.hlgroup
	local guifg = args.guifg
	local guibg = args.guibg
	local gui = args.gui
	local guisp = args.guisp
	local cmd = { "hi", hlgroup }
	if guifg then
		table.insert(cmd, "guifg=" .. guifg)
	end
	if guibg then
		table.insert(cmd, "guibg=" .. guibg)
	end
	if gui then
		table.insert(cmd, "gui=" .. gui)
	end
	if guisp then
		table.insert(cmd, "guisp=" .. guisp)
	end
	vim.cmd(table.concat(cmd, " "))
end

-- Set specified highlight groups
local setup = function(collections)
	-- Setting highlighting and syntax
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")
	vim.g.colors_name = "base16-{{scheme-slug}}"

	-- Loop through highlighting collections
	for _, collection in pairs(collections) do
		for _, group in ipairs(collection) do
			hi(group)
		end
	end

	-- Built-in terminal
	vim.g.terminal_color_0 = colors.base00
	vim.g.terminal_color_1 = colors.base08
	vim.g.terminal_color_2 = colors.base0B
	vim.g.terminal_color_3 = colors.base0A
	vim.g.terminal_color_4 = colors.base0D
	vim.g.terminal_color_5 = colors.base0E
	vim.g.terminal_color_6 = colors.base0C
	vim.g.terminal_color_7 = colors.base05
	vim.g.terminal_color_8 = colors.base03
	vim.g.terminal_color_9 = colors.base08
	vim.g.terminal_color_10 = colors.base0B
	vim.g.terminal_color_11 = colors.base0A
	vim.g.terminal_color_12 = colors.base0D
	vim.g.terminal_color_13 = colors.base0E
	vim.g.terminal_color_14 = colors.base0C
	vim.g.terminal_color_15 = colors.base07
end

-- Highlight specified groups
local makeVimCollection = require("vim")
local makeStandardCollection = require("standard")
local makeDiffCollection = require("diff")
local makeGitCollection = require("git")
local makeSpellCollection = require("spell")
local makeNeovimCollection = require("neovim")
local makeUserCollection = require("user")
local makeLspCollection = require("lsp")
local makeTreesitterCollection = require("treesitter")
setup({
	vim = makeVimCollection(colors),
	standard = makeStandardCollection(colors),
	diff = makeDiffCollection(colors),
	git = makeGitCollection(colors),
	spell = makeSpellCollection(colors),
	neovim = makeNeovimCollection(colors),
	user = makeUserCollection(colors),
	lsp = makeLspCollection(colors),
	treesitter = makeTreesitterCollection(colors),
})
