#!/usr/bin/zsh
# This file contains various shell helper functions for productivity and convenience

# https://unix.stackexchange.com/a/115431
THIS_SCRIPT_DIR=${0:a:h}

# Fix the nameservers in /etc/resolv.conf to be sane ones, and not some ISP's
fixnameservers() {
  sudo su -c 'echo "nameserver 208.67.222.222" > /etc/resolv.conf'
  sudo su -c 'echo "nameserver 1.1.1.1" >> /etc/resolv.conf'
  sudo su -c 'echo "nameserver 8.8.8.8" >> /etc/resolv.conf'
}

# Fix when the psmouse driver fucks up fucking up the touchpad
fixmouse() {
  sudo modprobe -r psmouse
  sudo modprobe psmouse
}

# find out detailed disk usage of a directory
dusage() {
  if [[ -z "$1" ]]; then
    echo "Prints detailed disk usage of a directory."
    echo "Usage: dusage <directory-name>"
  else
    du -ah -d 1 $1 | sort -hr
  fi
}

# commenting this out, because pure zsh theme doesnt work
# see: https://github.com/sindresorhus/pure/issues/487#issuecomment-520242592
# overload/overwrite cat to run ls if the argument is a directory
#cat() {
#  test -f "$1" && command cat "$1" || ls "$1"
#}

# a shell function to augment docker to delete all containers, running and
# stopped, at one go!
docker() {
  if [[ $@ == "stats" ]]; then
    command docker stats --format \
      "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.MemPerc}}\t{{.NetIO}}\t{{.BlockIO}}\t{{.PIDs}}"
  else
    command docker $@
  fi
}

# alert via desktop notification if a long running command (e.g builds) fails
# (helpful when you are away from the terminal)
shout() {
  echo ${pipestatus[@]}
  if [[ $last_status -ne 0 ]]; then
    #data=$(cat /dev/stdin)
    echo "Failed: command: "
  fi
}

# Fix when zsh_history becomes corrupt
# http://superuser.com/questions/957913/how-to-fix-and-recover-a-corrupt-history-file-in-zsh
fix_zsh_history() {
  mv ~/.zsh_history ~/.zsh_history_bad
  strings ~/.zsh_history_bad > ~/.zsh_history
  fc -R ~/.zsh_history
}

urldecode() {
  if [[ -z "$1" ]]; then
    echo "ERROR: URL required"
    exit 1;
  fi
  echo "$1" | awk -niord '{printf RT?$0chr("0x"substr(RT,2)):$0}' RS=%..
}

# Update/Upgrade a bunch of my tools that I use
upgrade_tools() {
  echo ">> Updating pure zsh theme.."
  (cd ~/.zsh/pure && git pull origin main)
  echo ">> Upgrading doom emacs.."
  ~/.emacs.d/bin/doom upgrade
  echo ">> Updating oh-my-zsh.."
  omz update
}

startdockerpg() {
  docker run -d -p 5432:5432 --name pgpostgis -e POSTGRES_HOST_AUTH_METHOD=trust postgis/postgis:17-3.5
}

startdockerredis() {
  docker run -d -p 6379:6379 --name localredis redis:7.4.2
}

stacknewmy() {
  (
  if [[ -z "$1" ]]; then
    echo "ERROR: project name required. Usage: stacknewmy <project-name>"
    exit 1;
  fi
  stack new --bare "$1" ~/.stack/templates/anonray.hsfiles
  )
}

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do
    time $shell -i -c exit
  done
}

# Source another script which has non-public helper functions
if [ -f "$THIS_SCRIPT_DIR/private/functions.sh" ]; then
  source "$THIS_SCRIPT_DIR/private/functions.sh"
fi
