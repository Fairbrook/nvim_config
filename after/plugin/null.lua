local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.xmlformat,
        null_ls.builtins.formatting.trim_whitespace,
        null_ls.builtins.formatting.prismaFmt,
        null_ls.builtins.formatting.prettierd.with({
            condition = function(utils)
              return utils.has_file({ ".prettierrc.js" }) or utils.has_file({ ".prettierrc" }) or utils.has_file({ ".prettierrc.json" })
            end,
        }),
    },
})

