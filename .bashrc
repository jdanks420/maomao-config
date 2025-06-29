[[ $- != *i* ]] && return

shopt -s autocd

export EDITOR=hx
export VISUAL=hx
export HISTCONTROL=ignoreboth

eval "$(fzf --bash)"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:,fg+:,bg:,bg+:
  --color=hl:#ffffff,hl+:#ffffff,info:#ffffff,marker:#ffffff
  --color=prompt:#ffffff,spinner:#ffffff,pointer:#ffffff,header:
  --color=border:,preview-border:,label:,query:
  --border="none" --border-label="" --preview-window="border-sharp" --padding="2"
  --margin="2" --prompt=" " --marker=" " --pointer="󰋇 "
  --separator="" --scrollbar="" --layout="reverse" --info="right"'

### ARCHIVE EXTRACTION
# usage: ex <file>
function ex {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: ex <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
 else
    for n in "$@"
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.cbt|*.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar)
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.cbr|*.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.cbz|*.epub|*.zip)       unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.cb7|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.pkg|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *.cpio)      cpio -id < ./"$n"  ;;
            *.cba|*.ace)      unace x ./"$n"      ;;
            *)
                         echo "ex: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
fi
}

IFS=$SAVEIFS

alias hx='helix'
alias q='exit'
alias ls='exa -a --icons'
alias grep='grep --color=auto'
alias sp="chmod +x ~/.config/scripts/*"
alias ..='cd ..'
alias mkdir='mkdir -pv'
alias mp3='cd ~/Music && yt-dlp -x --embed-thumbnail --audio-format mp3 --cookies-from-browser firefox'
alias mp4='cd ~/Videos && yt-dlp -f "best[ext=mp4]" --cookies-from-browser firefox'
alias fcd='cd ~ && cd "$(find -type d | fzf)"'
alias e='hx "$(find | fzf --preview "cat {}")"'
alias y='yazi'
alias t='touch'
alias delete='rm -rf $(find | fzf -m)'

PS1='󱡁 \W> '
