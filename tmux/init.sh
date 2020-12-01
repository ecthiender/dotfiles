#!/bin/bash
# Author: Anon Ray <rayanon@riseup.net>
# Date: Feb 18 2020 (14:20)
# Last modified: Feb 18 2020 (14:20)

# export required env vars

# Make sure locale is UTF-8
locale=$(echo "$LANG" | cut -d '.' -f 1)
export LC_ALL="$locale.UTF-8"
export DISABLE_AUTO_TITLE="true"
# export TERM="xterm-256color"

# load the default sessions I always need
tmuxp load -2 -y pers work

# Below is the older implementation using tmux directly. This has been then superseded by tmuxp
#!/bin/bash
# tmux session initialisation script

# Make sure locale is UTF-8
# locale=$(echo "$LANG" | cut -d '.' -f 1)
# export LC_ALL="$locale.UTF-8"
#
# tmux="tmux -2"
#
# SESSION=$1
# if [ -z "$SESSION" ]
# then
  # SESSION="work"
# fi
#
# workspace1="$server"
# workspace2="$server"
# window1=
#
# $tmux has-session -t $SESSION > /dev/null
#
# if [ $? -eq 0 ]
# then
  # echo "Session exists\n"
  # $tmux attach-session -t $SESSION
  # exit 0;
# fi
#
# echo "Creating new session $SESSION\n"
# cd $workspace1
# $tmux new-session -d -s $SESSION
# cd $workspace2
# tmux new-window -t $SESSION:2 -n www-dev
#
# $tmux select-window -t $SESSION:1
# $tmux attach-session -t $SESSION
# export TERM="xterm-256color"
