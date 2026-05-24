return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
                                                                   ;                                                
                                                                   ED.              :                               
                      ,;                  .                        E#Wi            t#,     L.                     ,;
          .Gt       f#i                  ;W.    .      t           E###G.         ;##W.    EW:        ,ft       f#i 
         j#W:     .E#t  GEEEEEEEL       f#EDi   Dt     Ej GEEEEEEELE#fD#W;       :#L:WE    E##;       t#E     .E#t  
       ;K#f      i#W,   ,;;L#K;;.     .E#f E#i  E#i    E#,,;;L#K;;.E#t t##L     .KG  ,#D   E###t      t#E    i#W,   
     .G#D.      L#D.       t#E       iWW;  E#t  E#t    E#t   t#E   E#t  .E#K,   EE    ;#f  E#fE#f     t#E   L#D.    
    j#K;      :K#Wfff;     t#E      L##LffiE#t  E#t    E#t   t#E   E#t    j##f f#.     t#i E#t D#G    t#E :K#Wfff;  
  ,K#f   ,GD; i##WLLLLt    t#E     tLLG##L E########f. E#t   t#E   E#t    :E#K::#G     GK  E#t  f#E.  t#E i##WLLLLt 
   j#Wi   E#t  .E#L        t#E       ,W#i  E#j..K#j... E#t   t#E   E#t   t##L   ;#L   LW.  E#t   t#K: t#E  .E#L     
    .G#D: E#t    f#E:      t#E      j#E.   E#t  E#t    E#t   t#E   E#t .D#W;     t#f f#:   E#t    ;#W,t#E    f#E:   
      ,K#fK#t     ,WW;     t#E    .D#j     E#t  E#t    E#t   t#E   E#tiW#G.       f#D#;    E#t     :K#D#E     ,WW;  
        j###t      .D#;    t#E   ,WK,      f#t  f#t    E#t   t#E   E#K##i          G#t     E#t      .E##E      .D#; 
         .G#t        tt     fE   EG.        ii   ii    E#t    fE   E##D.            t      ..         G#E        tt 
           ;;                :   ,                     ,;.     :   E#t                                 fE           
                                                                   L:                                   ,           
 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        -- keys = {
        --   { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
        --   { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
        --   { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
        --   { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
        --   { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
        --   { icon = " ", key = "s", desc = "Restore Session", section = "session" },
        --   { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
        --   { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
        --   { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        -- },
      },
    },
  },
}
