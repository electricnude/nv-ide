



-- <F1> help
-- <F2> vim-codepainter
-- <F3> vim-codepainter navigate
vim.keymap.set('n', '<F3>', ':set relativenumber!<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F4>', ':set list! list?<CR>', {noremap = false, silent = true})
-- <F5> Ranger from toggleterm
vim.keymap.set('n', '<F6>', ':FocusToggle<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<F7>', ':NvimTreeToggle<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<F8>', ':ZenMode<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>nm', ':Dispatch npm start<CR>', {noremap = false, silent = true})
-- Buffers
vim.keymap.set('n', '<leader>bd', ':BDelete this<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>bda', ':BDelete! all<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>bdh', ':BDelete! hidden<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>bn', '<Plug>(cokeline-focus-next)', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>bp', '<Plug>(cokeline-focus-prev)', {noremap = false, silent = true})
-- Git (Fugitive and Lazygit)
vim.keymap.set('n', '<leader>gf', ':20G<CR>', {noremap = false, silent = true})
-- Easy-align
vim.keymap.set('x', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = true})
vim.keymap.set('n', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = true})
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
vim.keymap.set('n', '<leader>sp', ":lua require('spectre').open()<CR>", {noremap = true, silent = true})
vim.keymap.set('v', '<leader>sp', ":lua require('spectre').open_visual()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>sl', "viw:lua require('spectre').open_file_search()<CR>", {noremap = true, silent = true})
-- Sad
vim.keymap.set('n', '<leader>sr', ":lua require('FTerm').run({'fd | sad', vim.fn.input('SEARCH -> '), vim.fn.input('REPLACE -> ')})<CR>", {noremap = true, silent = true})
-- Telescope
vim.keymap.set('n', '<leader>r', ":lua require('telescope.builtin').live_grep()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>#', ":lua require('telescope.builtin').grep_string()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>bb', ":lua require('config.plugins.telescope').my_buffers()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ts', ":lua require('telescope.builtin').treesitter()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>l', ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>f', ":lua require('telescope.builtin').find_files()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>fp', ":lua require('config.plugins.telescope').project_files()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>p', ":lua require'telescope'.extensions.repo.list{file_ignore_patterns={'/%.cache/', '/%.cargo/', '/%.local/', '/%.asdf/', '/%.zinit/', '/%.tmux/'}}<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>c', ":lua require('config.plugins.telescope').my_git_commits()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>g', ":lua require('config.plugins.telescope').my_git_status()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>b', ":lua require('config.plugins.telescope').my_git_bcommits()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ns', ":lua require('config.plugins.telescope').my_note()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>nn', ":lua NewNote()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>n', ":lua require('util.scratches').open_scratch_file_floating()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>y', ':Telescope neoclip<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ll', ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('GREP -> ') })<CR>", {noremap = true, silent = true})
-- HlsLens
vim.keymap.set('n', 'n', "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.keymap.set('n', 'N', "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '*', "*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.keymap.set('n', '#', "#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.keymap.set('n', 'g*', "g*<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
vim.keymap.set('n', 'g#', "g#<Cmd>lua require('hlslens').start()<CR>", { noremap = true })
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
vim.keymap.set('n', '<leader>to', ':TodoTrouble  keywords=TODO,FIX,FIXME<CR>', {noremap = true, silent = true})
vim.keymap.set("n", "<leader>t", "<cmd>TroubleToggle<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>tw", "<cmd>Trouble workspace_diagnostics<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>td", "<cmd>Trouble document_diagnostics<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>tl", "<cmd>Trouble loclist<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>tq", "<cmd>Trouble quickfix<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>tr", "<cmd>Trouble lsp_references<cr>", {silent = true, noremap = true})
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



-- Tabs
-- via: https://joker1007.hatenablog.com/entry/2022/09/03/172957
-- __ vim.keymap.set('n', '<C-n>', '<cmd>tabnext<CR>', {silent = true, noremap = true})
-- __ vim.keymap.set('n', '<C-p>', '<cmd>tabprevious<CR>', {silent = true, noremap = true})
-- __ vim.keymap.set('n', '<C-c>', '<cmd>tabnew<CR>', {silent = true, noremap = true})

vim.keymap.set('n', '<C-n>', '<cmd>bnext<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-p>', '<cmd>bprevious<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-q>', '<cmd>b#<cr><cmd>bd#<cr>', { noremap = true })
vim.keymap.set('n', '<C-c>', '<cmd>tabnew<CR>', {silent = true, noremap = true})
vim.keymap.set('n', '<C-S-n>', '<cmd>tabnext<CR>', {silent = true, noremap = true})
vim.keymap.set('n', '<C-S-p>', '<cmd>tabprevious<CR>', {silent = true, noremap = true})


-- via: https://gist.github.com/joelpalmer/9db3f1cdfd463daa6d7c614ae1618fa6
vim.cmd([[
" -- コマンドラインモード: %$ でカレントファイルのフォルダパスに展開
cnoremap <expr> %$ getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" -- コマンドラインモード: %% でカレントファイルのフルパスに展開
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:p') : '%%'
]])

