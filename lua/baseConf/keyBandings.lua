vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", vim.cmd.w, {desc = "Guardar archivo"})

-- moverse entre tabs
vim.keymap.set("n", "<leader>1", ":tabn 1 <CR>", {desc = "Mover a Tab 1"})
vim.keymap.set("n", "<leader>2", ":tabn 2 <CR>", {desc = "Mover a Tab 2"})
vim.keymap.set("n", "<leader>3", ":tabn 3 <CR>", {desc = "Mover a Tab 3"})
vim.keymap.set("n", "<leader>4", ":tabn 4 <CR>", {desc = "Mover a Tab 4"})
vim.keymap.set("n", "<leader>5", ":tabn 5 <CR>", {desc = "Mover a Tab 5"})
vim.keymap.set("n", "<leader>6", ":tabn 6 <CR>", {desc = "Mover a Tab 6"})

--autcompletado
vim.keymap.set('i', '<C-Space>', "<C-x><C-o>", { desc = 'Trigger autocompletado' })
