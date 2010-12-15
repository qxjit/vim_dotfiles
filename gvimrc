colorscheme vividchalk
if has("gui_running") && has("gui_macvim")
  let screenheight = system("osascript -e 'tell application \"Finder\" to get bounds of window of desktop' | sed s/,//g | awk '{print $4}'")

  if screenheight >= 1200
    set guifont=Monaco:h14.00
    set lines=65
  else
    set guifont=Monaco:h12.00
    set lines=47
  endif

  set columns=161
endif
