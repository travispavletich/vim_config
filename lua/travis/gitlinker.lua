require('gitlinker').setup{
    opts = {
        action_callback = function(url)
            vim.fn.setreg("+", url)
        end,
    },
}
