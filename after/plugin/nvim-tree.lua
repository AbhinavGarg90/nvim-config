vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup
{
    renderer = {
        icons = {
            modified_placement = "before",
            show = {
                file = false,
                folder = false,
                git = false,
                modified = true
            }
        }
    }
}

vim.keymap.set("n", "<C-e>", ":NvimTreeFindFile<CR>")
