
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "qw", "<ESC>", { desc = "Exit insert mode with qw" })

keymap.set("n", "<leader>ch", ":nohl<CR>", { desc = "[C]lear [H]ighlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment Number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement Number" })

-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split [W]indow [V]ertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split [W]indow [H]orizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Split [W]indow [E]qually" })
keymap.set("n", "<leader>wc", "<cmd>close<CR>", { desc = "[C]lose [W]indow Split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "[O]pen New [T]ab" })
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "[T]ab [C]lose" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "[N]ext [T]ab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "[P]revious [T]ab" })
keymap.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "Open [B]uffer In [T]ab" })
