alias -g C='| wc -l'
alias -g G='| egrep'
alias -g NS='| sort -n'
alias -g NUL="> /dev/null 2>&1"
alias -g PIPE='|'
alias -g X='| xclip'
alias .....='cd ../../../..'
alias ....='cd ../../..'
alias ...='cd ../..'
alias ..='cd ..'
alias :Q=' exit'
alias :q=' exit'
alias :x=' exit'
alias archey3='ufetch'
alias archey='ufetch'
alias cls='echo -ne "\033c"'
alias conn='netstat -Wat | grep ESTABLISHED'
alias copy='rsync -avh -progress'
alias cp='cp -i'
alias cpuz='inxi -F'
alias dirsize='du -hs * | sort -h'
alias dockerkill='docker stop $(docker ps -a -q)'
alias dots='cd ~/Git/dotfiles || cd ~/git/dotfiles'
alias e='extract'
alias fa='echo "updatedb?" && locate -i '
alias failed='sudo systemctl --failed'
alias fastwget='aria2c -x 16'
alias fc-list='xlsfonts'
alias files='pacman -Ql' # find files containing to package
alias fonts='xlsfonts'
alias g='git'
alias ga='git add'
alias gb='git remote update origin --prune && git branch -a'
alias gba='git branch -a'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcom='git checkout master'
alias gd='git diff'
alias gdob='git push origin --delete'
alias gitm='git commit -m'
alias glb='git branch -a'
alias glog='sudo gnome-logs'
alias gnome-mplayer='echo try the more reliable mplayer'
alias gp='git pull'
alias gpuf='git push origin --force'
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias grm='git rebase master'
alias gs='git status'
alias halt="sudo systemctl halt"
alias i='sudo pacman -S'
alias inet='ping 8.8.8.8'
alias infile='pagrep'
alias iomonitor='watch -n 0.1 iostat'
alias iowatch='iomonitor'
alias isearch='pagrep'
alias journalctl='journalctl --no-pager -n 2000'
alias kernellog='dmesg'
alias k='kubectl'
alias kgn='kubectl get nodes -o wide'
alias kgp='kubectl get pods'
alias kgd='kubectl get deployment'
alias kge='kubectl get events'
alias kgpvc='kubectl get pvc'
alias lastinstalled="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 50"
alias logs='journalctl'
alias ls='exa'
alias lsof='lsof -Pni'
alias md5='md5sum'
alias mv='mv -i'
alias nano='vim'
alias noturnoff='xset -dpms && xset s off && xset s off -dpms'
alias parallel='parallel --no-notice'
alias pdf='zathura'
alias pic='ristretto'
alias pkill='pkill -f'
alias psql='pgcli'
alias ports='sudo lsof -Pni'
alias r='sudo pacman -R'
alias random='echo $RANDOM'
alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'
alias removeorphans='sudo pacman -Rns $(pkg-list_true_orphans)'
alias rm='rm -i'
alias setdate='timedatectl'
alias settime='setdate'
alias shutdown='/usr/bin/systemctl poweroff'
alias smallfiles='sudo find / -xdev -type d -size +100k'
alias soundcontrol='pavucontrol'
alias speedtest='speedtest-cli'
alias speedtestaria='aria2c -d /dev -o null --allow-overwrite=true  -x 16 -s 16 http://speedtest.tele2.net/1000GB.zip --file-allocation=none'
alias stresstest='parallel -N0 pi $(echo 10^9 | bc) ::: {1..8}'
alias sysinfo='inxi -F'
alias syslog='cat /var/log/everything.log'
alias tex='texnonstop'
alias tmux="tmuxp load -d ~/default.yml; tmux attach"
alias u='sudo pacman -Syu'
alias web='python2 -m SimpleHTTPServer 22222'
alias webserver='web'
alias xclip='xclip -selection c'
alias youtube='mpsyt'
alias yt='docker run --rm -u $(id -u):$(id -g) -v $PWD:/data vimagick/youtube-dl'
alias zshbench='repeat 10 time zsh -i -c exit'
