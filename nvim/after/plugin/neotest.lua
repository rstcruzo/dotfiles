local neotest = require('neotest')

vim.keymap.set('n', '<leader>tn', neotest.run.run, { desc = '[t]est [n]earest' })
vim.keymap.set('n', '<leader>tf', function() neotest.run.run(vim.fn.expand('%')) end, { desc = '[t]est [n]earest' })
vim.keymap.set('n', '<leader>to', function() neotest.output.open({ enter = true }) end, { desc = '[t]est [o]pen output window' })
vim.keymap.set('n', '<leader>ts', function() neotest.summary.toggle() end, { desc = '[t]est [s]ummary' })

vim.keymap.set('n', '<leader>dn', function() neotest.run.run({ strategy = 'dap' }) end,
    { desc = '[d]ebug [n]earest test' })
