-- =====================================================
-- BASIC OPTIONS (modern Neovim Lua style)
-- =====================================================
local opt = vim.opt

opt.number = true
opt.relativenumber = false
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 8

-- encoding
opt.encoding = "utf-8"

-- =====================================================
-- INDENTATION (4 spaces, no tabs)
-- =====================================================
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.smartindent = true
opt.autoindent = true

-- =====================================================
-- SEARCH
-- =====================================================
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- =====================================================
-- BACKSPACE BEHAVIOR
-- =====================================================
opt.backspace = { "indent", "eol", "start" }

-- =====================================================
-- UI BEHAVIOR
-- =====================================================
opt.ruler = true
opt.showcmd = true
opt.showmatch = true
opt.colorcolumn = "81"

-- =====================================================
-- SPLITS
-- =====================================================
opt.splitbelow = true
opt.splitright = true

-- =====================================================
-- HISTORY
-- =====================================================
opt.history = 50

-- =====================================================
-- FOLDING (MODERN SAFE DEFAULT)
-- NOTE: avoids legacy vimscript globals
-- =====================================================
opt.foldmethod = "indent"   -- safer default than "syntax"
opt.foldlevel = 99
opt.foldlevelstart = 1

-- =====================================================
-- KEYMAPS (modern API)
-- =====================================================
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- split navigation
map("n", "<C-H>", "<C-W><C-H>", opts)
map("n", "<C-L>", "<C-W><C-L>", opts)

-- move + maximize split
map("n", "<C-S-J>", "<C-W><C-J><C-W>_", opts)
map("n", "<C-S-K>", "<C-W><C-K><C-W>_", opts)

-- toggle fold
map("n", "<Space>", "za", opts)

-- =====================================================
-- VISUAL HELP (tab visibility without legacy syntax hacks)
-- =====================================================
opt.list = true
opt.listchars = {
  tab = "→ ",
  trail = "·",
  nbsp = "␣",
}

-- =====================================================
-- CLIPBOARD (WSL-friendly)
-- =====================================================
opt.clipboard = "unnamedplus"
