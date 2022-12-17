local status, comment = pcall(require, "Comment")
if not status then
	return
end

comment.setup({
	toggler = {
		---Line-comment toggle keymap
		line = "zz",
		---Block-comment toggle keymap
		block = "za",
	},
	pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
})
