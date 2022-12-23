-- <F1> help
-- <F2> vim-codepainter
-- <F3> vim-codepainter navigate
vim.keymap.set('n', '<F3>', ':set relativenumber!<CR>', {noremap = true, silent = false})
vim.keymap.set('n', '<F4>', ':set list! list?<CR>', {noremap = false, silent = false})
-- <F5> da toggleterm
vim.keymap.set('n', '<F6>', ':FocusToggle<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<F7>', ':NvimTreeToggle<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>nm', ':Dispatch npm start<CR>', {noremap = false, silent = false})
-- Buffers
vim.keymap.set('n', '<leader>bd', ':BDelete this<CR>', {noremap = false, silent = false})
vim.keymap.set('n', '<leader>bda', ':BDelete! all<CR>', {noremap = false, silent = false})
vim.keymap.set('n', '<leader>bdh', ':BDelete! hidden<CR>', {noremap = false, silent = false})
vim.keymap.set('n', '<leader>bn', '<Plug>(cokeline-focus-next)', {noremap = false, silent = false})
vim.keymap.set('n', '<leader>bp', '<Plug>(cokeline-focus-prev)', {noremap = false, silent = false})
-- Git (Fugitive and Lazygit)
vim.keymap.set('n', '<leader>gf', ':20G<CR>', {noremap = false, silent = false})
-- Easy-align
vim.keymap.set('x', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = false})
vim.keymap.set('n', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = false})
-- LSP
vim.keymap.set('n', '<space>,', ':lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<space>;', ':lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<space>a', ':lua vim.lsp.diagnostic.code_action()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<space>d', ':lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<space>f', ':lua vim.lsp.buf.formatting()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<space>h', ':lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<space>m', ':lua vim.lsp.buf.rename()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<space>r', ':lua vim.lsp.buf.references()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<space>s', ':lua vim.lsp.buf.document_symbol()<CR>', {noremap = true, silent = true})
-- Spectre
vim.keymap.set('n', '<leader>sp', ":lua require('spectre').open()<CR>", {noremap = true, silent = false})
vim.keymap.set('v', '<leader>sp', ":lua require('spectre').open_visual()<CR>", {noremap = true, silent = false})
vim.keymap.set('n', '<leader>sl', "viw:lua require('spectre').open_file_search()<CR>", {noremap = true, silent = false})
-- Sad
vim.keymap.set('n', '<leader>sr', ":lua require('FTerm').run({'fd | sad', vim.fn.input('SEARCH -> '), vim.fn.input('REPLACE -> ')})<CR>", {noremap = true, silent = true})
-- Telescope
vim.keymap.set('n', '<leader>r', ":lua require('telescope.builtin').live_grep()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>#', ":lua require('telescope.builtin').grep_string()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>bb', ":lua require('config.plugins.telescope').my_buffers()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ts', ":lua require('telescope.builtin').treesitter()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>l', ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>f', ":lua require('config.plugins.telescope').project_files()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>p', ":lua require'telescope'.extensions.repo.list{file_ignore_patterns={'/%.cache/', '/%.cargo/', '/%.local/', '/%.asdf/', '/%.zinit/', '/%.tmux/'}}<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>c', ":lua require('config.plugins.telescope').my_git_commits()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>g', ":lua require('config.plugins.telescope').my_git_status()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>b', ":lua require('config.plugins.telescope').my_git_bcommits()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ns', ":lua require('config.plugins.telescope').my_note()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>nn', ":lua NewNote()<CR>", {noremap = true, silent = false})
vim.keymap.set('n', '<leader>n', ":lua require('util.scratches').open_scratch_file_floating()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>y', ':Telescope neoclip<CR>', {noremap = true, silent = false})
vim.keymap.set('n', '<leader>ll', ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('GREP -> ') })<CR>", {noremap = true, silent = true})
-- HlsLens
vim.keymap.set('n', 'n', "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.keymap.set('n', 'N', "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '*', "*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.keymap.set('n', '#', "#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.keymap.set('n', 'g*', "g*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.keymap.set('n', 'g#', "g#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
-- Todo-comments
vim.keymap.set('n', '<leader>to', ':TodoTelescope<CR>', {noremap = true, silent = false})
-- Move.nvim
vim.keymap.set('n', '<A-j>', ":MoveLine(1)<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', ":MoveLine(-1)<CR>", { noremap = true, silent = true })
vim.keymap.set('v', '<A-j>', ":MoveBlock(1)<CR>", { noremap = true, silent = true })
vim.keymap.set('v', '<A-k>', ":MoveBlock(-1)<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<A-l>', ":MoveHChar(1)<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<A-h>', ":MoveHChar(-1)<CR>", { noremap = true, silent = true })
vim.keymap.set('v', '<A-l>', ":MoveHBlock(1)<CR>", { noremap = true, silent = true })
vim.keymap.set('v', '<A-h>', ":MoveHBlock(-1)<CR>", { noremap = true, silent = true })
-- Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "gR", "<cmd>Trouble lsp_references<cr>", {silent = true, noremap = true})
-- Nvim-dap
vim.keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>ds", "<cmd>lua require'dap'.step_over()<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>dsi", "<cmd>lua require'dap'.step_into()<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>dso", "<cmd>lua require'dap'.step_out()<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>dui", ":lua require('dapui').toggle()<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>dro", "<cmd>lua require'dap'.repl.open()<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>dcc", "<cmd>lua require'telescope'.extensions.dap.commands{}<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>dlb", "<cmd>lua require'telescope'.extensions.dap.list_breakpoints{}<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>dv", "<cmd>lua require'telescope'.extensions.dap.variables{}<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>df", "<cmd>lua require'telescope'.extensions.dap.frames{}<CR>", {silent = true, noremap = true})