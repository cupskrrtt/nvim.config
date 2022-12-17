local status, startup = pcall(require, "nvim-startup")
if not status then
	return
end

startup.setup({
	startup_file = "/tmp/nvim-startuptime", -- sets startup log path (string)
	message = "Startup time {}", -- sets a custom message (string | function)
})
