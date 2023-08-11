-- Automatically loaded by plugins.core
--
-- Set leader key, must happen before plugins
-- Set <space> as the leader key
-- See `:help mapleader`

vim.g.mapleader = " " -- set leader key
vim.g.maplocalleader = "\\" -- set leader local to buffer

local opt = vim.opt

-- Add any additional options here
opt.backup = false -- Disable backup (using undodir instead)
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.colorcolumn = "80" -- Add visual bar to preferred column length
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = true -- Use spaces instead of tabs
opt.hlsearch = false -- Removes highlight when done searching
opt.incsearch = true -- Show seach match so far when typing
opt.isfname:append("@-@") -- Append full path to relative path
opt.relativenumber = true -- Enable relative line numbers
opt.scrolloff = 8 -- Always keep 8 lines visible when scrolling
opt.shiftwidth = 2 -- Size of indents
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartindent = true -- insert indents automatically
opt.softtabstop = 2 -- number of spaces tabs counts for
opt.swapfile = false -- disable swap file (using undodir instead)
opt.tabstop = 2 -- number of spaces tabs count for
opt.termguicolors = true -- enables 24-bit rgb color in the tui
opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- directory for the undodir
opt.undofile = true -- save undo history
opt.updatetime = 200 -- Trigger CursorHold
opt.wrap = false -- Disable word wrapping
opt.autowrite = true -- Enable auto write
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 3 -- Hide * markup for bold and italic
opt.formatoptions = "jcroqlnt"
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- Ignore case
opt.inccommand = "nosplit" -- preview incremental substitute
opt.laststatus = 0 -- Last window will never have a status line
opt.list = true -- Show some invisible characters (tabs...
opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" } -- To save between sessions
opt.shiftround = true -- Round indent
opt.shortmess:append({ W = true, I = true, c = true })
opt.showmode = false -- Dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- Don't ignore case with capitals
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.timeoutlen = 300 -- How long you have to finish a command
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width

if vim.fn.has("nvim-0.9.0") == 1 then
	opt.splitkeep = "screen"
	opt.shortmess:append({ C = true })
end

vim.g.markdown_recommended_style = 0
