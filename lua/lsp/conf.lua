vim.lsp.config('clangd', {
    cmd = {
        'clangd',
        '--clang-tidy',
        '--clang-tidy-checks=*',
        '--all-scopes-completion',
        '--completion-style=detailed',
        '--header-insertion-decorators',
        '--background-index',
        '--background-index-priority=normal'
    },
})
vim.lsp.enable('clangd')

vim.lsp.enable('pylsp')

vim.lsp.enable('rust_analyzer')

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        -- Configure keybindings
        vim.keymap.set('n', 'grd', vim.lsp.buf.definition, { buffer = true },
        { desc = 'Go to Definition' })

        -- Configure autocompletion
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method('textDocument/completion') then
          -- Optional: trigger autocompletion on EVERY keypress. May be slow!
            local chars = {}; for i = 32, 126 do
                table.insert(chars, string.char(i)) end
            client.server_capabilities.completionProvider.triggerCharacters = 
                chars
            vim.opt.completeopt = {'menu', 'menuone', 'noinsert', 'noselect',
                'fuzzy', 'popup'}
            vim.lsp.completion.enable(true, client.id, ev.buf,
                { autotrigger = true })
            --vim.keymap.set('i', '<C-Space>', function()
            --    vim.lsp.completion.get()
            --end)
        end
    end,
})

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.INFO] = '',
            [vim.diagnostic.severity.HINT] = '󱧢',
        },
    },
})
