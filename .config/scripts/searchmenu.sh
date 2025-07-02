#!/bin/bash
#
chosen=$(echo -e "startpage\narchwiki\nyoutube\nunixporn\nstackex\namazon\nwallhaven\nfmovies\nbitchute\nrumble\ntwitter\ngithub\nprotondb\ngreasyfork\nfirefox-addons\n" | rofi -dmenu -theme ~/.config/rofi/searchmenu.rasi)

if [[ $chosen = "startpage" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://www.startpage.com/sp/search?query={}'
elif [[ $chosen = "archwiki" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://wiki.archlinux.org/index.php?search={}'
elif [[ $chosen = "youtube" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://www.youtube.com/results?search_query={}'
elif [[ $chosen = "amazon" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://www.amazon.com/s?k={}'
elif [[ $chosen = "wallhaven" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://wallhaven.cc/search?q={}'
elif [[ $chosen = "fmovies" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://fmovies.llc/search/{}'
elif [[ $chosen = "bitchute" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://www.bitchute.com/search?query={}'
elif [[ $chosen = "rumble" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://rumble.com/search/all?q={}'
elif [[ $chosen = "twitter" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://x.com/search?q={}'
elif [[ $chosen = "stackex" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://stackexchange.com/search?q={}'
elif [[ $chosen = "github" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://github.com/search?q={}'
elif [[ $chosen = "protondb" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://www.protondb.com/search?q={}'
elif [[ $chosen = "greasyfork" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://greasyfork.org/en/scripts?q={}'
elif [[ $chosen = "firefox-addons" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://addons.mozilla.org/en-US/firefox/search/?q={}'
elif [[ $chosen = "unixporn" ]]; then
  echo "" | rofi -dmenu -theme ~/.config/rofi/search.rasi | xargs -I{} firefox --new-window 'https://www.reddit.com/r/unixporn/search/?q={}'


fi
