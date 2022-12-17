local status_ok, dap = pcall(require, "dap")
if not status_ok then
  return
end

dap.adapters.ruby = function(callback, config)
  callback {
    type = "server",
    host = "127.0.0.1",
    port = "38697",
    executable = {
      command = "bundle",
      args = { "exec", "rdbg", "-n", "--open", "--port", "${port}",
        "-c", "--", "bundle", "exec", config.command, config.script,
      },
    },
  }
end

dap.configurations.ruby = {
  {
    type = "ruby",
    name = "debug current file",
    request = "attach",
    localfs = true,
    command = "ruby",
    script = "${file}"
  },
  {
    type = "ruby",
    name = "run current spec file",
    request = "attach",
    localfs = true,
    command = "rspec",
    script = "${file}"
  }
}
