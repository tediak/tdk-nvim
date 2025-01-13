-- I like changing the art from time to time
local ascii_header = [[
 ⠀⠀⠀⠀⠀⣀⣀⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 ⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀
 ⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀
 ⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⣿⣿⡆⠀⠀⠀⢸⣿⣿⠿⠿⢿⣿⣿⣿⣿⡿⠿⠿⣿⣿⡇⠀⠀⠀⣾⣿⣿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀
 ⢿⣿⠿⠿⠿⠿⣿⣿⣿⡏⠀⠀⠀⢹⣿⡇⠀⠀⠀⢸⣿⢱⣶⣴⣶⢹⣿⣿⡏⣶⣦⣶⡎⣿⡇⠀⠀⠀⢿⣿⠁⠀⠀⠈⣿⣿⣿⡿⠟⣋⣽⣿⣿⠇⠀⠀⠀⠀
 ⠘⣿⣧⣄⣀⣴⣿⣿⣿⣷⣄⣀⣠⣾⣟⠀⠀⠀⠀⠈⣿⣦⣙⣛⣡⣾⡿⢿⣷⣌⣛⣋⣴⣿⠁⠀⠀⠀⠘⣿⣦⣄⣀⣴⣿⣿⣿⣿⣶⣶⣤⣿⡟⠀⠀⠀⠀⠀
 ⠀⢿⣿⣿⣿⣿⣏⣼⣌⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣰⣆⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣏⣼⣌⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀
 ⠀⠀⠉⠉⢿⣿⣿⣿⣿⣿⣿⡏⠉⠁⠀⠀⠀⠀⠀⠀⠀⠉⠉⢹⣿⣿⣿⣿⣿⣿⡏⠉⠉⠀⠀⠀⠀⠀⠀⠀⠉⠉⣿⣿⣿⣿⣿⣿⣿⡏⠉⠁⠀⠀⠀⠀⠀⠀
 ⠀⠀⠀⠀⠈⠉⠁⠁⠁⠉⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠁⠉⠉⠈⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠁⠁⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀]]

local ascii_header2 = [[

   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆
    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦
          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄
           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄
          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀
   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄
  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄
 ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄
 ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄
      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆
       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃
                                   ]]


local ascii_header3 = [[

                                               ___
                                            ,o88888
                                         ,o8888888'
                   ,:o:o:oooo.        ,8O88Pd8888"
               ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"
             ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"
            , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"
           , ..:.::o:ooOoOO8O888O8O,COCOO"
          , . ..:.::o:ooOoOOOO8OOOOCOCO"
           . ..:.::o:ooOoOoOO8O8OCCCC"o
              . ..:.::o:ooooOoCoCCC"o:o
              . ..:.::o:o:,cooooCo"oo:o:
           `   . . ..:.:cocoooo"'o:o:::'
           .`   . ..::ccccoc"'o:o:o:::'
          :.:.    ,c:cccc"':.:.:.:.:.'
        ..:.:"'`::::c:"'..:.:.:.:.:.'
      ...:.'.:.::::"'    . . . . .'
     .. . ....:."' `   .  . . ''
   . . . ...."'
   .. . ."'
  .                                                 ]]

local ascii_header4 = [[
                                             _.oo.
                     _.u[[/;:,.         .odMMMMMM'
                  .o888UU[[[/;:-.  .o@P^    MMM^
                 oN88888UU[[[/;::-.        dP^
                dNMMNN888UU[[[/;:--.   .o@P^
               ,MMMMMMN888UU[[/;::-. o@^
               NNMMMNN888UU[[[/~.o@P^
               888888888UU[[[/o@^-..
              oI8888UU[[[/o@P^:--..
           .@^  YUU[[[/o@^;::---..
         oMP     ^/o@P^;:::---..
      .dMMM    .o@^ ^;::---...
     dMMMMMMM@^`       `^^^^
    YMMMUP^
     ^^                                              ]]

return {
  'echasnovski/mini.starter',
  version = '*',
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    local starter = require('mini.starter')
    local telescope = require('telescope')
    local telescope_builtin = require('telescope.builtin')

    local custom_items = {
      {
        name = 'Open file',
        action = function()
          telescope.extensions.smart_open.smart_open({
            cwd_only = true,
            filename_first = true,
          })
        end,
        section = 'Telescope',
      },
      {
        name = 'Find in files',
        action = function()
          telescope_builtin.live_grep()
        end,
        section = 'Telescope',
      },
      {
        name = 'Color Scheme',
        action = function()
          telescope_builtin.colorscheme({ enable_preview = false })
        end,
        section = 'Telescope'
      }
    }

    starter.setup({
      autoopen = true,
      evaluate_single = true,
      header = function()
        local username = os.getenv('USER')
        local hour = tonumber(vim.fn.strftime('%H'))
        local part_id = math.floor((hour + 4) / 8) + 1
        local day_part = ({ 'evening', 'morning', 'afternoon', 'evening' })[part_id]
        return ('%s\n\nGood %s, %s!'):format(ascii_header4, day_part, username)
      end,
      items = {
        custom_items,
        starter.sections.builtin_actions(),
        -- starter.sections.recent_files(),
      },
      content_hooks = {
        starter.gen_hook.aligning('center', 'center'),
      }
    })
  end
}
