return {
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
		},
		config = function()
			local cmp = require("cmp")
			cmp.setup({
				snippet = {
					expand = function(args)
						vim.snippet.expand(args.body)
					end,
				},
				window = {
					completion = { max_height = 12 },
					documentation = cmp.config.disable,
				},
				completion = {
					completeopt = "menu,menuone,noinsert"
				},
				matching = {
					disallow_fuzzy_matching = false,
					disallow_fullprefix_matching = false,
					disallow_partial_fuzzy_matching = false,
					disallow_partial_matching = false,
					disallow_prefix_unmatching = false,	
				},
				mapping = cmp.mapping.preset.insert({
					["<C-space>"] = cmp.mapping.complete(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
					["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
					["<C-e>"] = cmp.mapping.abort(),
				}),
				sources = cmp.config.sources({
					{ name = "path", priority = 1000 },
					{ name = "buffer", priority = 750 },
				}),
				formatting = {
					fields = { "abbr", "kind", "menu" },
					format = function(entry, vim_item)
						vim_item.menu = ({
							buffer = "[BUF]",
							path = "[PTH]",
						})[entry.source.name]
						return vim_item
					end,
				},
			})
		end,
	},
}
