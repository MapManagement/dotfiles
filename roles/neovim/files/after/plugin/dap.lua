local dap = require("dap")


-- ===== C# / .NET =====
dap.adapters.coreclr = {
    type = "executable",
    command = "/usr/local/bin/netcoredbg/netcoredbg",
    args = { "--interpreter=vscode" }
}

dap.configurations.cs = {
    {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
            return vim.fn.input("Path to dll: ", vim.fn.getcwd(), "file")
        end,
    },
}

-- ===== Python =====
-- in order to work, you need to install debugpy into a virtual environment
-- pip install debugby

-- ===== Rust =====


vim.keymap.set('n', '<F5>', function() require 'dap'.continue() end, {})
vim.keymap.set('n', '<F10>', function() require 'dap'.step_over() end, {})
vim.keymap.set('n', '<F11>', function() require 'dap'.step_into() end, {})
vim.keymap.set('n', '<F12>', function() require 'dap'.step_out() end, {})
vim.keymap.set('n', '<Leader>b', function() require 'dap'.toggle_breakpoint() end, {})
vim.keymap.set(
    'n',
    '<Leader>B',
    function() require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end,
    {}
)
vim.keymap.set(
    'n',
    '<Leader>lp',
    function() require 'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end,
    {}
)
vim.keymap.set('n', '<Leader>dr', function() require 'dap'.repl.open() end, {})
vim.keymap.set('n', '<Leader>dl', function() require 'dap'.run_last() end, {})
