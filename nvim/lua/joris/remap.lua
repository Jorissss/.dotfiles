vim.g.mapleader = " "

-- NORMAL MODE
---------------------------------
-- Yanks text into clipboard ("+y and "+Y).
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Searches and replaces the
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Move lines down. It marks a position with mz, joins lines with J, and returns to marked position with `z.
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll down or up and center (zz) the cursor.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Move to next or previous search result and center (zzzv) the cursor.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Format buffer using lsp.
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Navigate through the quickfix list and center (zz) the cursor.
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- Navigate through the location list and center (zz) the cursor.
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- VISUAL MODE
---------------------------------
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- MULTIPLE MODES
---------------------------------
-- Deletes selected text into the black hole register ("_d) and pastes it
-- before the current position (P).
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Deletes text into the black hole register ("_d).
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
