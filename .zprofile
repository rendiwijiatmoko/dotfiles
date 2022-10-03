# if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx -- vt1 &> /dev/null
fi

#[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
