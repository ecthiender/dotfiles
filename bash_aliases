# Custom aliases go here..

alias v='vim '
#alias tunnelwebserver='ssh ubuntu@107.23.10.141 -gNR 3334:localhost:80 -v -o exitonforwardfailure=yes'
alias p8='ping 8.8.8.8'
alias p4='ping 8.8.4.4'
#alias vnstatmts='vnstat -i ppp0 -d'
alias sshx3='ssh -l ecthiender 88.198.36.219 -v' # mothership.in
#alias sshx3='mosh 88.198.36.219'
alias sshx5='ssh -l ecthiender 213.239.195.144 -v' # servelots server
alias ssh-sky='ssh -l badol 10.0.0.10 -v'
#alias sshvagrant='ssh -l vagrant 10.1.1.201 -v'
alias mocp='mocp --theme yellow_red_theme'
alias rsync='rsync --progress --partial --verbose --recursive --copy-links --copy-dirlinks -h' # use following rsync options always
alias screenoff='xset dpms force off' # turn laptop monitor off
alias lyrics='python $HOME/codeyard/lyrics-fetcher/fetch.py' # lyrics fetcher
alias ddg='python $HOME/codeyard/duckduckgo/query.py' # duckduckgo query app
alias tmux='sh $HOME/.tmux-session-init.sh'
alias speed='zsh $HOME/codeyard/speed.sh '


# Not aliases but variables used frequently in shell
#pecab='$HOME/server/www/pecab'
#alipi='$HOME/server/www/alipi'
server=$HOME'/server/www'
