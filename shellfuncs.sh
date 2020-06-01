#!/usr/bin/zsh

# Fix the nameservers in /etc/resolv.conf to be sane ones, and not some ISPs
fixnameservers() {
  sudo su -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf'
  sudo su -c 'echo "nameserver 1.1.1.1" >> /etc/resolv.conf'
  sudo su -c 'echo "nameserver 208.67.222.222" >> /etc/resolv.conf'
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

# overload/overwrite cat to run ls if the argument is a directory
cat() {
  test -f "$1" && command cat "$1" || ls "$1"
}

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
