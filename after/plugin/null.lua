local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        --null_ls.builtins.diagnostics.eslint,
        --null_ls.builtins.code_actions.eslint_d,
        --null_ls.builtins.formatting.eslint_d,
        --null_ls.builtins.formatting.prettier,
        --null_ls.builtins.formatting.prettier_eslint,
        null_ls.builtins.formatting.trim_whitespace,
        null_ls.builtins.formatting.prismaFmt,
--        null_ls.builtins.formatting.prettierd.with({
--            condition = function(utils)
--              return utils.has_file({ ".prettierrc.js" }) or utils.has_file({ ".prettierrc" })
--            end,
--        }),
    },
})

