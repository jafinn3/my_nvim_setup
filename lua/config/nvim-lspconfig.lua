-- vim.lsp.set_log_level("debug")
local opts = { noremap=true, silent=true }

local on_attach = function(client, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['svlangserver'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        systemverilog = {
            includeIndexing = {
                'hw/**/*.{sv,svh}',
                'bazel-bin/hw/svjt/**/*.{sv,svh}',
                'bazel-bin/protocols/**/*.{sv,svh}',
                'bazel-bin/registerFile/**/*.{sv,svh}',
                'bazel-fpga/external/**/*.{sv,svh}'
            },
            excludeIndexing = {'bazel-fpga/external/verilator_v4.224/**/*.{v,vh,sv,svh}'},
            defines = {'DESIGN_SEL=designs_pkg::FALCON_NETWORK', 'BOARD_TYPE=boards_pkg::VU3P_SG2_IMC', 'HW_LINTING'},
            launchConfiguration = {'/home/user/git/fpga/bazel-out/host/bin/external/verilator_v4.224/verilator_executable -sv --lint-only -Wwarn-style --Wno-PINCONNECTEMPTY --cdc --Wno-LITENDIAN --Wno-TIMESCALEMOD --Wno-CASEX +libext+.v +libext+.sv'}
        }
    }
}

require('lspconfig')['clangd'].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        clangd = {
            path = '/opt/imc/llvm-13.0.0/bin/clangd',
            arguments = {
                "--background-index",
                "--compile-commands-dir=/home/user/git/fpga/",
                "-clang-tidy=0"
            }
        }
    }
}

require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    capabilities = capabilities
}
require('lspconfig').kotlin_language_server.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

-- Diagnostics settings & toggling

vim.diagnostic.config({ signs = false })

vim.g.diagnostics_active = true
function _G.toggle_diagnostics()
  if vim.g.diagnostics_active then
    vim.g.diagnostics_active = false
    vim.diagnostic.disable()
    vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
  else
    vim.g.diagnostics_active = true
    vim.diagnostic.enable()
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
      }
    )
  end
end

vim.api.nvim_create_user_command('ToggleDiagnostics', ':call v:lua.toggle_diagnostics()<CR>', {})

