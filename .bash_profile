#cow says random stuff
alias randomcowsay='cowsay -f $(ls  ~/brew/share/cows | gshuf -n 1)'
alias randomcowthink='cowsay -f $(ls  ~/brew/share/cows | gshuf -n 1)'
cowproposfunc() {
    { echo "Hey $USER! Did you know that:"; echo; man -k $1 | gshuf -n 1; echo; echo "Also, some food for thought:"; echo; fortune; } | randomcowsay
}
alias cowpropos=cowproposfunc
alias cowproposrandom='cowpropos  $(ls /bin/* /usr/local/bin/* /usr/bin/* ~/brew/bin/* | xargs basename | gshuf -n 1)'
alias cowfortune='fortune | randomcowsay'
cowproposrandom

#git aliases
alias gitstat="git status -s"
alias gittree="git log --graph --pretty=oneline --abbrev-commit"

#other aliases
alias ls="ls -G"
