#!/bin/sh
# tmux session initialisation script

SESSION=$1
if [ -z "$SESSION" ]
then
  SESSION="work"
fi
workspace1="$server"
workspace2="$server"
window1=

tmux has-session -t $SESSION > /dev/null

if [[ $? -eq 0 ]]
then
  echo "Session exists\n"
  tmux attach-session -t $SESSION
  exit 0;
fi

echo "Creating new session $SESSION\n"
#cd $workspace1
tmux new-session -d -s $SESSION
#cd $workspace2
#tmux new-window -t $SESSION:2 -n www-dev

tmux select-window -t $SESSION:1
tmux attach-session -t $SESSION
