-- Global

-- change mapleader
vim.g.mapleader = ' '

-- vim.opt.fillchars = { vert = ' ' }
vim.opt.showtabline = 2
vim.opt.mouse = 'a'
vim.opt.backupcopy = 'yes'
vim.opt.undolevels = 1000
vim.opt.shortmess:append { c = true, S = true }
vim.opt.showmode = false
vim.opt.hidden = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.wrapscan = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.smartcase = true
vim.opt.errorbells = false
vim.opt.joinspaces = false
vim.opt.title = true
vim.opt.encoding = 'UTF-8'
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.clipboard = 'unnamedplus'
vim.opt.list = true
vim.opt.listchars = { tab = ">>>", trail = "·", precedes = "←", extends = "→",eol = "↲", nbsp = "␣" }
-- vim.opt.listchars = { tab = ">>>", trail = "·", precedes = "←", extends = "→",eol = "↴", nbsp = "␣" }

-- vim.opt.listchars:append "eol:↴"


-- good page: https://homaju.hatenablog.com/entry/2022/06/10/081205
vim.opt.helplang = 'ja', 'en'


vim.opt.laststatus = 3
vim.opt.timeoutlen = 500
vim.opt.splitkeep = 'screen'

-- Buffer
vim.opt.fileformat = 'unix'
vim.opt.fileformats = 'unix', 'mac', 'dos'
vim.opt.tabstop = 2
vim.opt.spelllang = 'en'
vim.opt.softtabstop = 2
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

-- -- Window
vim.opt.number = true
vim.opt.colorcolumn = "+1"
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 1
vim.opt.foldnestmax = 10
vim.opt.signcolumn = 'yes'
vim.opt.relativenumber = true
vim.opt.foldenable = false
vim.opt.cursorline = true

vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local last_pos = vim.fn.line("'\"")
    if last_pos > 0 and last_pos <= vim.fn.line("$") then
      vim.api.nvim_win_set_cursor(0, {last_pos, 0})
    end
  end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
  callback =  function()
    vim.highlight.on_yank()
  end,
})



vim.cmd([[
" via: https://zenn.dev/kawarimidoll/articles/450a1c7754bde6


" Highlight extra whitespaces
" https://zenn.dev/kawarimidoll/articles/450a1c7754bde6
" u00A0 ' ' no-break space
" u2000 ' ' en quad
" u2001 ' ' em quad
" u2002 ' ' en space
" u2003 ' ' em space
" u2004 ' ' three-per em space
" u2005 ' ' four-per em space
" u2006 ' ' six-per em space
" u2007 ' ' figure space
" u2008 ' ' punctuation space
" u2009 ' ' thin space
" u200A ' ' hair space
" u200B '​' zero-width space
" u3000 '　' ideographic (zenkaku) space
"
" colors:
" - #2c2d27
autocmd VimEnter * ++once
      \ call matchadd('ExtraWhitespace', "[\u00A0\u2000-\u200B\u3000]")
      \ | highlight default ExtraWhitespace term=underline ctermfg=0 ctermbg=7 guifg=#ffffff guibg=#1d2021


]])


-- vim.opt.listchars:append({ trail = "✚" })

