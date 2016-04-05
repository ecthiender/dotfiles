#!/usr/bin/zsh

# a shell function to augment docker to delete all containers, running and
# stopped, at one go!
docker() {
  if [[ $@ == "rm all" ]]; then
    command docker rm `docker ps --no-trunc -qa`
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
