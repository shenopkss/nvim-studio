vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Better escape using jk in insert and terminal mode
-- keymap("i", "jk", "<ESC>", default_opts)
-- keymap("t", "jk", "<C-\\><C-n>", default_opts)

-- Center search results
-- keymap("n", "n", "nzz", default_opts)
-- keymap("n", "N", "Nzz", default_opts)

-- Visual line wraps
-- keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
-- keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)

-- Better indent
keymap("v", "<", "<gv", default_opts)
keymap("v", ">", ">gv", default_opts)

-- Paste over currently selected text without yanking it
-- keymap("v", "p", '"_dP', default_opts)

-- Switch buffer
-- keymap("n", "<TAB>", ":bprevious<CR>", default_opts)
-- keymap("n", "<S-TAB>", ":bnext<CR>", default_opts)

keymap("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", default_opts)
keymap("n", "<TAB>", ":BufferLineCycleNext<CR>", default_opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)


-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", default_opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", default_opts)

-- Resizing panes
-- keymap("n", "<left>", ":vertical resize +1<CR>", default_opts)
-- keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
-- keymap("n", "<Up>", ":resize -1<CR>", default_opts)
-- keymap("n", "<Down>", ":resize +1<CR>", default_opts)

keymap('n', '<leader>n', ':NvimTreeToggle<CR>', default_opts)
-- keymap('n', '<leader>x', ':x<CR>', default_opts)
keymap('n', '<leader>w', ':w<CR>', default_opts)
keymap('n', '<leader>q', ':q<CR>', default_opts)
keymap('n', '<leader>d', ':bd<CR>', default_opts)

-- keymap('n', '<leader>cc', 'gcc', default_opts)
-- keymap('n', '<leader>bc', 'gbc', default_opts)

keymap("n", "<leader>gr", "<cmd>lua vim.lsp.buf.rename()<CR>", {noremap = true, silent = true})
keymap("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
keymap("n", "<leader>gh", "<cmd>lua vim.lsp.buf.hover()<CR>", {noremap = true, silent = true})
keymap("n", "<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", {noremap = true, silent = true})
keymap("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {noremap = true, silent = true})
keymap("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", {noremap = true, silent = true})

-- diagnostic
-- vim.api.nvim_set_keymap('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', vim.api.nvim_set_keymap)
-- vim.api.nvim_set_keymap('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', vim.api.nvim_set_keymap)
-- vim.api.nvim_set_keymap('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', vim.api.nvim_set_keymap)

-- keymap('n', "<leader>tt", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR>", {noremap = true, silent = true})
keymap('n', "<D-1>", ":FloatermToggle myfloat<CR>", {noremap = true, silent = true})
keymap('v', "<D-1>", ":FloatermToggle myfloat<CR>", {noremap = true, silent = true})
keymap('t', "<D-1>", "<C-\\><C-n>:q<CR>", {noremap = true, silent = true})

-- keymap('t', "<Esc>", "<C-\\><C-n>:q<CR>", {noremap = true, silent = true})

keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", {silent = true, noremap = true})
keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", {silent = true, noremap = true})
keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", {silent = true, noremap = true})
keymap("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", {silent = true, noremap = true})
keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", {silent = true, noremap = true})
keymap("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", {silent = true, noremap = true})

keymap("n", "<leader>m", "<cmd>AerialToggle!<cr>", {silent = true, noremap = true})


keymap("n", "<F5>", "<Cmd>lua require'dap'.continue()<CR>", {silent = true, noremap = true})
keymap("n", "<F8>", "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", {silent = true, noremap = true})
keymap("n", "<F10>", "<Cmd>lua require'dap'.step_over()<CR>", {silent = true, noremap = true})
keymap("n", "<F11>", "<Cmd>lua require'dap'.step_into()<CR>", {silent = true, noremap = true})
keymap("n", "<F12>", "<Cmd>lua require'dap'.step_out()<CR>", {silent = true, noremap = true})

local builtin = require('telescope.builtin')
keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>",  {silent = true, noremap = true})
keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>",  {silent = true, noremap = true})
keymap('n', '<leader>fw', "<cmd>lua require('telescope.builtin').grep_string()<cr>",  {silent = true, noremap = true})
keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>",  {silent = true, noremap = true})
keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>",  {silent = true, noremap = true})

-- copilot
vim.g.copilot_no_tab_map = true
keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- rust-tools
keymap('n', '<leader>rr', "<cmd>RustRunnables<cr>",  {silent = true, noremap = true})

keymap('n', '<leader>ss', '<cmd>lua require("spectre").open()<CR>', { desc = "Open Spectre" })
keymap('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = "Search current word" })
keymap('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = "Search current word" })
keymap('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', { desc = "Search on current file" })
