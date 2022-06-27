-- Setup nvim-cmp.
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
       require("luasnip").lsp_expand(args.body)
    end,
  },
  window = {},
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
  }, {
    { name = "buffer" },
  })
})

function config()
    return {
        capabilities = capabilities,
        on_attach = function() 
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
            vim.keymap.set("n", "<leader>dl", vim.diagnostic.goto_next, {buffer=0})
            vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer=0})
            vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0})
        end
    }
end

require("lspconfig").gopls.setup(config())

require("lspconfig").tsserver.setup(config())

require("lspconfig").html.setup(config())

require("lspconfig").cssls.setup(config())

require("lspconfig").volar.setup(config())


