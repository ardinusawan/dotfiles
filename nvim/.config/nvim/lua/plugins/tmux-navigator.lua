return {
  "christoomey/vim-tmux-navigator",
  lazy = false, -- load on startup so the keymaps are ready
  keys = {
    { "<C-h>", "<Cmd>TmuxNavigateLeft<CR>" },
    { "<C-j>", "<Cmd>TmuxNavigateDown<CR>" },
    { "<C-k>", "<Cmd>TmuxNavigateUp<CR>" },
    { "<C-l>", "<Cmd>TmuxNavigateRight<CR>" },
    { "<C-\\>", "<Cmd>TmuxNavigatePrevious<CR>" },
  },
}
