local lspconfig = require 'lspconfig'

lspconfig.pylsp.setup {
  settings = {
    pylsp = {
      plugins = {
        ruff = {
          enabled = true,
          formatEnabled = true,
        },
        autopep8 = { enabled = false },
        pycodestyle = { enabled = false },
        pyflakes = { enabled = false },
        black = { enabled = false },
      },
    },
  },
}

lspconfig.rust_analyzer.setup {
  settings = {
    ['rust-analyzer'] = {
      imports = {
        granularity = {
          group = 'module',
        },
        prefix = 'self',
      },
      cargo = {
        buildScripts = {
          enable = true,
        },
      },
    },
  },
}
