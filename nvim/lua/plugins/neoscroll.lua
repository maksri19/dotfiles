return {
	"karb94/neoscroll.nvim",
	event = "VeryLazy",
	config = function()
		local neoscroll = require('neoscroll')
		local keymap = {
			["<C-u>"] = function()
				neoscroll.scroll(-0.5, { move_cursor=false; duration = 120 })
			end;
			["<C-d>"] = function()
				neoscroll.scroll(0.5, { move_cursor=false; duration = 120 })
			end;
			["<C-b>"] = function()
				neoscroll.scroll(0.3, { move_cursor=false; duration = 100 })
			end;
			["<C-f>"] = function()
				neoscroll.scroll(-0.3, { move_cursor=false; duration = 100 })
			end;
			["<C-y>"] = function()
				neoscroll.scroll(-0.1, { move_cursor=false; duration = 70 })
			end;
			["<C-e>"] = function()
				neoscroll.scroll(0.1, { move_cursor=false; duration = 70 })
			end;
			["zt"] = function()
				neoscroll.zt({ half_win_duration = 85 })
			end;
			["zz"] = function()
				neoscroll.zz({ half_win_duration = 85 })
			end;
			["zb"] = function()
				neoscroll.zb({ half_win_duration = 85 })
			end;
		}

		local modes = { 'n', 'v', 'x' }

		for key, func in pairs(keymap) do
			vim.keymap.set(modes, key, func)
		end

		neoscroll.setup({
			mappings = {},
			duration_multiplier = 1.0,
			easing = 'quadratic',
		})
	end
}
