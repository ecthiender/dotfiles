#!/bin/sh
# tmux session initialisation script

SESSION="work"
workspace1="$HOME/server/www"
workspace2="$HOME/codeyard"
window1=

tmux has-session -t $SESSION > /dev/null

if [[ $? -eq 0 ]]
then
  echo "Session exists\n"
  tmux attach-session -t $SESSION
  exit 0;
fi

echo "Creating new session $SESSION\n"
cd $workspace1
tmux new-session -d -s $SESSION -n www-dev
cd $workspace2
tmux new-window -t $SESSION:2 -n codeyard

tmux select-window -t $SESSION:1
tmux attach-session -t $SESSION
