return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      ---@type lspconfig.options
      servers = {
        -- lexical configuration instead of tsserver
        lexical = {
          cmd = { "/Users/shearogers/tools/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
          root_dir = function(fname)
            local util = require("lspconfig.util")
            return util.root_pattern("mix.exs", ".git")(fname) or vim.loop.cwd()
          end,
          filetypes = { "elixir", "eelixir", "heex" },
          settings = {},
        },
      },
      -- you can do any additional lsp server setup here
      -- return true if you don't want this server to be setup with lspconfig
      ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
      setup = {
        -- ["*"] = function(server, opts) end,
      },
    },
  },
}
