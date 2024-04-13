vim.keymap.set("n", "<leader>e", ":vsplit | wincmd H | Ex | vertical resize 25<CR>")

local function is_terminal_buffer(bufnr)
    local buftype = vim.api.nvim_buf_get_option(bufnr, 'buftype')
    return buftype == 'terminal'
end

vim.keymap.set("n", "<leader>q", function()
        if is_terminal_buffer(vim.api.nvim_get_current_buf())
            then vim.cmd("bd!")
            else vim.cmd("bd")
        end
        end)
vim.keymap.set("n", "<leader>t", ":split | wincmd J | horizontal resize 15 |terminal<CR>")
