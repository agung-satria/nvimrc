local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "tsx",
    "yaml",
    "html",
    "css",
    "markdown",
    "svelte",
    "graphql",
    "php",
    "phpdoc",
    "bash",
    "lua",
    "vim",
    "gitignore",
    "c",
    "cpp",
    "c_sharp",
    "python",
    "gomod",
    "ruby",
    "query",
    "sql",
    "go",
  },
  -- auto install above language parsers
  auto_install = true,
  sync_install = false, 
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,

  },
  indent = { enable = true, disable = { "yaml" } },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- from comment
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  -- from comment
}
