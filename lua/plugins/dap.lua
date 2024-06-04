return {
  {
    "mfussenegger/nvim-dap-python",
  -- stylua: ignore
  keys = {
    { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method", ft = "python" },
    { "<leader>dPc", function() require('dap-python').test_class() end, desc = "Debug Class", ft = "python" },
  },
    config = function()
      local venv = os.getenv("VIRTUAL_ENV")
      print(venv)
      local path = require("mason-registry").get_package("debugpy"):get_install_path()
      require("dap-python").setup(path .. "/venv/bin/python")
      if venv then
        table.insert(require("dap").configurations.python, {
          type = "python",
          request = "launch",
          name = "Launch cwd",
          console = "integratedTerminal",
          python = os.getenv("VIRTUAL_ENV") .. "/bin/python",
          program = "${file}",
          cwd = vim.fn.getcwd(),
        })
        -- local tb = require("dap").configurations.python
        -- -- print the tb table
        -- print(vim.inspect(tb))
      else
        table.insert(require("dap").configurations.python, {
          type = "python",
          request = "launch",
          name = "Launch cwd",
          console = "integratedTerminal",
          program = "${file}",
          cwd = vim.fn.getcwd(),
          -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
        })
        -- local tb = require("dap").configurations.python
        -- -- print the tb table
        -- print(vim.inspect(tb))
      end
    end,
  },
}
