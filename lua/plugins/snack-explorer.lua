local root_patterns = {
  -- directories
  "client",
  "server",

  -- version control systems
  "_darcs",
  ".hg",
  ".bzr",
  ".svn",
  ".git",

  -- build tools
  "Makefile",
  "CMakeLists.txt",
  "build.gradle",
  "build.gradle.kts",
  "pom.xml",
  "build.xml",

  -- docker
  "Dockerfile",
  "docker-compose.yml",

  -- node.js and javascript
  "package.json",
  "package-lock.json",
  "yarn.lock",
  ".nvmrc",
  "gulpfile.js",
  "Gruntfile.js",

  -- python
  "requirements.txt",
  "Pipfile",
  "pyproject.toml",
  "setup.py",
  "tox.ini",

  -- rust
  "Cargo.toml",

  -- go
  "go.mod",

  -- elixir
  "mix.exs",

  -- configuration files
  ".prettierrc",
  ".prettierrc.json",
  ".prettierrc.yaml",
  ".prettierrc.yml",
  ".eslintrc",
  ".eslintrc.json",
  ".eslintrc.js",
  ".eslintrc.cjs",
  ".eslintignore",
  ".stylelintrc",
  ".stylelintrc.json",
  ".stylelintrc.yaml",
  ".stylelintrc.yml",
  ".editorconfig",
  ".gitignore",

  -- html projects
  "index.html",

  -- miscellaneous
  "README.md",
  "README.rst",
  "LICENSE",
  "Vagrantfile",
  "Procfile",
  ".env",
  ".env.example",
  "config.yaml",
  "config.yml",
  ".terraform",
  "terraform.tfstate",
  ".kitchen.yml",
  "Berksfile",
}

return {
  "folke/snacks.nvim",
  opts = {
    -- need notifier for disabling "No notifications available"
    notifier = { enabled = true },

    image = { enabled = true },

    picker = {
      sources = {
        projects = {
          dev = {
            "~/.dotfiles",

            "~/dev",
            "~/dev/general",
            "~/dev/projects",
            "~/dev/general/LARGE_PROJECTS",
            "~/dev/general/NEW_PROJECTS",
            "~/dev/general/OLD_PROJECTS",
            "~/dev/general/TO_DO_PROJECTS",
          },
          patterns = root_patterns,
          -- <leader>fp will always open picker_files
          confirm = "picker_files",
        },
        files = {
          hidden = true,
          ignored = true,
        },
      },
      -- show hidden files like .env
      hidden = true,
      -- show files ignored by git like node_modules
      ignored = true,

      exclude = {
        ".git",
        "node_modules",
        ".sst",
        ".next",
        ".svelte-kit",
        "yarn.lock",
        ".yarn",
        "package-lock.json",
        "dist",
        ".turbo",
        ".changeset",
      },
    },
  },
}
