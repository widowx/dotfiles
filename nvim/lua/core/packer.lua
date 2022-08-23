-- Automatically install packer --
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require'packer'.startup({function()
    use 'wbthomason/packer.nvim'
    -- Dashboard --
    use 'glepnir/dashboard-nvim'
    -- Neovim Tree --
    use {'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' }}
    -- Icons for nerd fonts --
    use 'kyazdani42/nvim-web-devicons'
    -- Statusline --
    use 'nvim-lualine/lualine.nvim'
    -- Comments Nvim --
    use 'numToStr/Comment.nvim'
    -- Colorscheme --
    use 'folke/tokyonight.nvim'
    -- Tabline --
    use 'kdheepak/tabline.nvim'
    -- Auto pairs and tags --
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    -- Treesitter --
    use {'nvim-treesitter/nvim-treesitter',
         run = function() require('nvim-treesitter.install').update({ with_sync = true })end,}
    -- Allow packer to auto configure plugins --
    if packer_bootstrap then
    require('packer').sync()
  end
end,
-- Allow packer to use float window for its operations --
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end }}
})
