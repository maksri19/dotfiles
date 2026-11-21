vim.g.mapleader = " "

-- vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
--
vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>", { desc = "No highlight" })
vim.keymap.set("n", "<leader>uw", "<cmd>set wrap!<CR>", { desc = "Toggle Wrap" })
--
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
--
-- vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1 }) end)
-- vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1 }) end)
--
-- vim.keymap.set("n", "<A-j>", "<cmd>m .+1<CR>==", { desc = "Move line down" })
-- vim.keymap.set("n", "<A-k>", "<cmd>m .-2<CR>==", { desc = "Move line up" })
-- vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
-- vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
--
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
--
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without losing clipboard" })
