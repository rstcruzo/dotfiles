local hl = vim.api.nvim_set_hl

vim.g.colorscheme = "rose-pine"

vim.cmd([[colorscheme ]] .. vim.g.colorscheme)

if vim.g.colorscheme == "vscode" then
	local c = require("vscode.colors").get_colors()

	hl(0, "RainbowDelimiterRed", { fg = c.vscLightRed })
	hl(0, "RainbowDelimiterYellow", { fg = c.vscYellowOrange })
	hl(0, "RainbowDelimiterBlue", { fg = c.vscBlue })
	hl(0, "RainbowDelimiterOrange", { fg = c.vscOrange })
	hl(0, "RainbowDelimiterGreen", { fg = c.vscGreen })
	hl(0, "RainbowDelimiterViolet", { fg = c.vscViolet })
	hl(0, "RainbowDelimiterCyan", { fg = c.vscMediumBlue })
end
