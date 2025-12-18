-- ────────────────────────────────────────────────────────────
-- Aura Theme for Neovim
-- A soft, pastel color scheme with excellent contrast
-- ────────────────────────────────────────────────────────────

return {
	{
		"bjarneo/aether.nvim",
		name = "aura-theme",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				-- Base colors (monotone shades for UI elements)
				base00 = "#121f29", -- Main background
				base01 = "#1e2b36", -- Lighter background
				base02 = "#293d4d", -- Selection background
				base03 = "#888888", -- Comments
				base04 = "#c0c0c0", -- Dark foreground
				base05 = "#dcdcdc", -- Default foreground
				base06 = "#ffffff", -- Light foreground
				base07 = "#ffffff", -- Lightest foreground

				-- Semantic accent colors
				base08 = "#a66a6a", -- Errors / Delete
				base09 = "#b68d4c", -- Numbers / Constants
				base0A = "#e1b36f", -- Classes / Warnings
				base0B = "#698b69", -- Strings / Added
				base0C = "#7191a1", -- Regex / Escape chars
				base0D = "#4b7086", -- Functions / Methods
				base0E = "#8c6c8c", -- Keywords / Storage
				base0F = "#ab8fab", -- Deprecated / Misc
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
