autocmd("VimEnter", {
    group = augroup("capslockstuff", { clear = true }),
    callback = function()
      vim.cmd("!setxkbmap -option caps:escape")
    end,
  })
  
  autocmd("VimLeave", {
    group = augroup("capslockstuff", { clear = true }),
    callback = function()
      vim.cmd("!setxkbmap -option")
    end,
  })