export PATH=/usr/local/bin:$PATH
ip="$HOME/.config/pianobar/isPlaying"
ctlf="$HOME/.config/pianobar/ctl"
STATE=$1

if [[ -n `pidof pianobar` ]]; then
    if [[ "$STATE" == "Pause" ]] && [[ "$(cat $ip)" == 1 ]]; then
      echo "0" > "$ip"
      echo "p" > "$ctlf"
      terminal-notifier -title "Pandora" -message "Pause" -group "Pianobar" -appIcon "$HOME/.config/pianobar/PandoraIco.png"
    elif [[ "$STATE" == "Play" ]] && [[ "$(cat $ip)" == 0 ]]; then
      echo "1" > "$ip"
      echo "p" > "$ctlf"
      terminal-notifier -title "Pandora" -message "Play" -group "Pianobar" -appIcon "$HOME/.config/pianobar/PandoraIco.png"
    fi
  else
  pianobar
fi
