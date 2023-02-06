local dap = require('dap')
dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = '/absolute/path/to/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
}
