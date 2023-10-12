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
    program="/home/user/.cache/bazel/_bazel_jfinn/2f06d073fd3230d438afb64afae646ca/execroot/roadrunner/bazel-out/k8-dbg--gccdebug/bin/hayabusa/nasdaq-options/test/component/fpgavaluationtriggeredengine/cme-multi-threshold-masscancel/_tsm-tte-component-test"

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

vim.api.nvim_set_keymap("n", "<F4>", ":lua require('dapui').toggle()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F5>", ":lua require('dap').toggle_breakpoint()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F6>", ":lua require('dap').step_over()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F7>", ":lua require('dap').step_out()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F8>", ":lua require('dap').continue()<CR>", {noremap = true})
