local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "mm", mark.add_file, { desc = "harpoon [m]ark" })

vim.keymap.set("n", "<M-1>", function()
	ui.nav_file(1)
end, { desc = "harpoon window 1" })
vim.keymap.set("n", "<M-2>", function()
	ui.nav_file(2)
end, { desc = "harpoon window 2" })
vim.keymap.set("n", "<M-3>", function()
	ui.nav_file(3)
end, { desc = "harpoon window 3" })
vim.keymap.set("n", "<M-4>", function()
	ui.nav_file(4)
end, { desc = "harpoon window 4" })
vim.keymap.set("n", "<M-5>", function()
	ui.nav_file(5)
end, { desc = "harpoon window 5" })
vim.keymap.set("n", "<M-6>", function()
	ui.nav_file(6)
end, { desc = "harpoon window 6" })
vim.keymap.set("n", "<M-7>", function()
	ui.nav_file(7)
end, { desc = "harpoon window 7" })
vim.keymap.set("n", "<M-8>", function()
	ui.nav_file(8)
end, { desc = "harpoon window 8" })
vim.keymap.set("n", "<M-9>", function()
	ui.nav_file(9)
end, { desc = "harpoon window 9" })

vim.keymap.set(
	"n",
	"<leader>m",
	ui.toggle_quick_menu,
	{ desc = "harpoon quick [m]enu" }
)
