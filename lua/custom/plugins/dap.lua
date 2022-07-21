local present, dap= pcall(require, "dap")

local projectName = os.getenv('PROJECT_NAME')
  dap.configurations.java = {
    {
      type = 'java',
      request = 'attach',
      projectName = projectName or nil,
      name = "Java attach",
      hostName = "127.0.0.1",
      port = 8089
    },
  }
