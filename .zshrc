# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

# sets default user
 DEFAULT_USER="Ruby"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# paths(duh)

export PATH=$HOME/bin:/usr/local/bin:$PATH:/usr/local/heroku/bin:$PATH:/home/ruby/.gem/ruby/2.1.0/bin:$HOME/.rbenv/bin:$PATH

# tmux on startup
 case $- in *i*)
   [ -z "$TMUX" ] && exec tmux
esac


# reloads zsh
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

# Rails aliases
alias u='unicorn -c config/unicorn.rb'
alias rc='rails console'
alias rd='rails destroy'
alias rdb='rails dbconsole'
alias rg='rails generate'
alias rgm='rails generate migration'
alias rp='rails plugin'
alias ru='rails runner'
alias rs='rails server'
alias rsd='rails server --debugger'

 # Rake aliases
alias rdm='rake db:migrate'
alias rdr='rake db:rollback'
alias rdc='rake db:create'
alias rds='rake db:seed'
alias rdd='rake db:drop'
alias rdtc='rake db:test:clone'
alias rdtp='rake db:test:prepare'
alias rdmtc='rake db:migrate db:test:clone'
alias rlc='rake log:clear'
alias rn='rake notes'
alias rr='rake routes'


# Pacman alias 
 alias pacupg='sudo pacman -Syu'		# Synchronize with repositories and then upgrade packages that are out of date on the local system.
 alias pacin='sudo pacman -S'		# Install specific package(s) from the repositories
 alias pacins='sudo pacman -U'		# Install specific package not from the repositories but from a file 
 alias pacre='sudo pacman -R'		# Remove the specified package(s), retaining its configuration(s) and required dependencies
 alias pacrem='sudo pacman -Rns'		# Remove the specified package(s), its configuration(s) and unneeded dependencies
 alias pacrep='pacman -Si'		# Display information about a given package in the repositories
 alias pacreps='pacman -Ss'		# Search for package(s) in the repositories
 alias pacloc='pacman -Qi'		# Display information about a given package in the local database
 alias paclocs='pacman -Qs'		# Search for package(s) in the local database
 alias paclo="pacman -Qdt"		# List all packages which are orphaned
 alias pacc="sudo pacman -Scc"		# Clean cache - delete all not currently installed package files
 alias paclf="pacman -Ql"		# List all files installed by a given package
 alias pacexpl="pacman -D --asexp"	# Mark one or more installed packages as explicitly installed 
 alias pacimpl="pacman -D --asdep"	# Mark one or more installed packages as non explicitly installed

# '[r]emove [o]rphans' - recursively remove ALL orphaned packages
 alias pacro="pacman -Qtdq > /dev/null && sudo pacman -Rns \$(pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"

 alias pacupd='sudo pacman -Sy && sudo abs'         # Update and refresh the local package and ABS databases against repositories
 alias pacinsd='sudo pacman -S --asdeps'            # Install given package(s) as dependencies
 alias pacmir='sudo pacman -Syy'                    # Force refresh of all package lists after updating /etc/pacman.d/mirrorlist
eval "$(rbenv init -)"
