-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
if true then return {} end

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- gruvbox tema eklentisi ekleniyor
  { "ellisonleao/gruvbox.nvim" },

  -- LazyVim'i gruvbox teması ile yüklemek için yapılandırma
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  -- trouble.nvim eklentisinin yapılandırmasını değiştirme
  {
    "folke/trouble.nvim",
    opts = { use_diagnostic_signs = true },
  },

  -- trouble.nvim eklentisini devre dışı bırakma
  { "folke/trouble.nvim", enabled = false },

  -- symbols-outline eklentisi ekleniyor
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },

  -- nvim-cmp yapılandırmasını değiştirme ve cmp-emoji eklentisini ekleniyor
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },

  -- telescope eklentisinin bazı seçeneklerini değiştirme ve eklenti dosyalarını bulmak için bir tuş ataması ekleme
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },

  -- telescope-fzf-native eklentisi ekleniyor
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  -- pyright'i lspconfig ile ekleniyor
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
      },
    },
  },

  -- tsserver'i typescript.nvim ile kurulum
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
      init = function()
        require("lazyvim.util").lsp.on_attach(function(_, buffer)
          vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
          vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
        end)
      end,
    },
    opts = {
      servers = {
        tsserver = {},
      },
      setup = {
        tsserver = function(_, opts)
          require("typescript").setup({ server = opts })
          return true
        end,
      },
    },
  },

  -- LazyVim için typescript ekstra yapılandırmaları
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- nvim-treesitter için daha fazla ağaç yapılandırıcısı ekleme
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        -- Buraya tsx ve typescript ekleniyor
        "tsx",
        "typescript",
      },
    },
  },

  -- nvim-lualine için özel yapılandırma örnekleri
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, "😄")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      return {
        -- buraya özel lualine yapılandırmanızı ekleyin
      }
    end,
  },

  -- alpha yerine mini.starter kullanma
  { import = "lazyvim.plugins.extras.ui.mini-starter" },

  -- jsonls ve schemastore paketlerini ekleyerek json için treesitter kurulumu
  { import = "lazyvim.plugins.extras.lang.json" },

  -- Kurulum istenen araçları ekleyin
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
      },
    },
  },

  -- Tamamlama ve snippet'lar için <tab> kullanımı
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
    },
    opts = function(_, opts)
      -- cmp ve LuaSnip ile <Tab> davranışını ayarlama
    end,
  },

  -- nvim-tree.lua için gizli dosyaları gösterme yapılandırması
  {
    "kyazdani42/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeOpen" },
    config = function()
      require("nvim-tree").setup({
        filters = {
          dotfiles = false,
        },
      })
    end,
  },
}
