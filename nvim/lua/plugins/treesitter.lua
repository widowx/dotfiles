require'nvim-treesitter.configs'.setup{
    ensure_installed = {
        'python',
        'lua',
        'html',
        'css',
        'javascript',
        'php',
        'bash',
    },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    autotag = { enable = true, }
}
