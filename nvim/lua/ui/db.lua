local db = require('dashboard')

db.custom_header = {
'♥♥♥    ♥♥ ♥♥♥♥♥♥♥  ♥♥♥♥♥♥  ♥♥    ♥♥ ♥♥ ♥♥♥    ♥♥♥ ',
'♥♥♥♥   ♥♥ ♥♥      ♥♥    ♥♥ ♥♥    ♥♥ ♥♥ ♥♥♥♥  ♥♥♥♥ ',
'♥♥ ♥♥  ♥♥ ♥♥♥♥♥   ♥♥    ♥♥ ♥♥    ♥♥ ♥♥ ♥♥ ♥♥♥♥ ♥♥ ',
'♥♥  ♥♥ ♥♥ ♥♥      ♥♥    ♥♥  ♥♥  ♥♥  ♥♥ ♥♥  ♥♥  ♥♥ ',
'♥♥   ♥♥♥♥ ♥♥♥♥♥♥♥  ♥♥♥♥♥♥    ♥♥♥♥   ♥♥ ♥♥      ♥♥ ',
}
db.header_pad = 2

db.custom_center = {
      {
          icon = '  ',
          desc = 'Recent Files                            ',
          action =  ':browse oldfiles',
          shortcut = 'SPC f'
      },
      {
          icon = '  ',
          desc ='New File                                ',
          action =  'DashboardNewFile',
          shortcut = 'SPC n'
      },
      {
          icon = '  ',
          desc = 'Config                                  ',
          action = ':e ~/.config/nvim/lua/core/init.lua',
          shortcut = 'SPC c'
      },
      {
          icon = '  ',
          desc = 'Update Plugins                          ',
          action = ':PackerSync',
          shortcut = 'SPC p'
      },
      {
           icon = '  ',
           desc = 'Quit                                    ',
           action = ':q',
           shortcut = 'SPC q'
       }
}
db.center_pad = 2

local plugins_count = vim.fn.len(vim.fn.globpath(
	'~/.local/share/nvim/site/pack/packer/start', '*', 0, 1
))

db.custom_footer = {  'Knowledge is power. -- Francis Bacon',
                      '',
                      '',
                      'Packer loaded ' .. plugins_count .. ' plugins'}
db.footer_pad = 2
