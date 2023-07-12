local dap = require('dap')

dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = '/home/user/.local/share/vscode-cpptools/extension/debugAdapters/bin/OpenDebugAD7',
}

local vscode_cpptools = {
    name = 'cpptools',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:5678',
    miDebuggerPath = '/opt/imc/gdb/bin/gdb',
    cwd = '${workspaceFolder}',
    program=""

}

dap.configurations.cpp = {
    vscode_cpptools
}

dap.configurations.c = dap.configurations.cpp

vim.fn.sign_define('DapBreakpoint',{ text = '', texthl = 'ErrorMsg', linehl = '', numhl = ''})
vim.fn.sign_define('DapStopped',{ text = '', texthl = 'CurSearch', linehl = '', numhl = ''})

local dapui = require("dapui")

dap.listeners.after.event_initialized["dapui_config"]=function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"]=function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"]=function()
  dapui.close()
end

dapui.setup()

