return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    opts = {
      provider = "litellm_default",
      providers = {
        litellm_default = {
          __inherited_from = "openai",
          endpoint = "https://litellm.coeus.missingham.net/v1",
          model = "code-agent",
          api_key_name = "LITELLM_API_KEY"
        },
      },
      rag_service = {
        enabled = true,
        host_mount = os.getenv("HOME"),
        runner = "nix",
        llm = {
          provider = "ollama",
          endpoint = "https://litellm.coeus.missingham.net/v1",
          api_key = "LITELLM_API_KEY",
          model = "rag-agent",
          extra = nil,
        },
        embed = {
          provider = "ollama",
          endpoint = "https://ollama.coeus.missingham.net",
          api_key = "LITELLM_API_KEY",
          model = "nomic-embed-text",
          extra = nil,
        },
        docker_extra_args = "",
      },
    },
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "echasnovski/mini.pick",
      "nvim-telescope/telescope.nvim",
      "hrsh7th/nvim-cmp",
      "ibhagwan/fzf-lua",
      "nvim-tree/nvim-web-devicons",
      "zbirenbaum/copilot.lua",
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            use_absolute_path = true,
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  }
}
