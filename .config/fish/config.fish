#                                 ╭─────────────╮
#                                 │ fish config │
#                                 ╰─────────────╯

set fish_greeting
set QT_QPA_PLATFORMTHEME qt5ct

# ╭──────────────────╮
# │ startup commands │
# ╰──────────────────╯

if test "$DISPLAY" = "" -a "$XDG_VTNR" = 1
        startx
end

# ╭──────────────╮
# │ key bindings │
# ╰──────────────╯

# bind \ce                                          'thunar $pwd'

# ╭─────────╮
# │ Exports │
# ╰─────────╯
# export VISUAL                                     'nvim'
# export EDITOR                                     '$VISUAL'
set -U SXHKD_SHELL sh
#                                   ╭───────╮
#                                   │ alias │
#                                   ╰───────╯

# ╭────────────────╮
# │ shell commands │
# ╰────────────────╯

# network
alias wifi-restart                                'nmcli radio wifi off && nmcli radio wifi on && nmtui'

# remove
alias rmf                                         'rm -rfI'
alias rm                                          'rm -I'

# remove
alias rmf                                         'rm -rf'
alias rmif                                        'rm -rfv'
alias rm                                          'rm -v'

# cp
alias cp                                          'cp -i'
alias cpr                                         'cp -r'
#alias cpir   'cp -ir'

# mv
alias mv                                          'mv -i'
alias mvr                                         'mv -r'
#alias mvir   ' mv -r'

# stat
# alias stat                                        "stat --printf = 'Name: %n\nSize: %s bytes\nType: %F\nCreated: \t%w\nLast modified:  %y\n'"

alias required                                    'yay -Qi $1 | grep "Required" '
alias depends                                     'yay -Qi $1 | grep "Depends " '

# cd
alias .                                           'cd'
alias ..                                          'cd ..'
alias ...                                         'cd ../../'
alias ....                                        'cd ../../../'
alias ....                                        'cd ../../../../'
alias .....                                       'cd ../../../../../'
alias cds                                         'cd $1 && ls'

# exit
alias :q                                          'exit'
alias :Q                                          'exit'
# alias his   'bat ~/.config/zsh/.zsh_history | grep ${1} | fzf'

 # clear
alias clc                                         'clear'
alias lcls                                        'clear && ls -al'
alias clsa                                        'clear && ls -a'
alias :c                                          'clear'
alias cls                                         'clc && ls'

# weather
alias weather                                     'curl wttr.in/anand'

# ╭───────────────────────────╮
# │ downloaded apps commmands │
# ╰───────────────────────────╯

# kittens in kitty terminal
alias icat                                        'kitty +kitten icat'
alias d                                           'kitty +kitten diff'

# exa
alias ls                                          'exa -G --icons'
alias tree                                        'exa --tree --icons'
# alias ls                                          '-Dhs'

# calcure
alias calendar                                    'calcure'

# sptlrx
alias lyrics                                      'sptlrx'

# nvim
alias vim                                         'nvim'
alias vi                                          'nvim'

# rxfetch
alias crx                                         'clc && rxfetch'

# searchbangs
alias s!                                          './~/tmp/searchbang/searchbang'

# feh
alias feh                                         'feh -g 1500x720 -d -B black --scale-down'

# dotfiles
alias dots                                        'git --git-dir=$HOME/Dotfiles --work-tree=$HOME'

# camera
alias camera                                      'guvcview'

# qalc
alias calc                                        'qalc'

# paint
alias paint                                       'gimp'

# rxfetch
alias cfetch                                      'clc && rxfetch'

# potato
alias timer                                       'potato'

# reddit
alias reddit                                      'tuir'

# ncmpcpp
alias songs                                       'ncmpcpp'
alias music                                       'ncmpcpp'

# ncdu
alias wiztree                                     'ncdu'

# bashtop
alias top                                         'bashtop'

# tbsm
alias tbsm                                        'tbsm --silent'

# git
# alias addup                                       'git add -u'
# alias addall                                      'git add .'
# alias branch                                      'git branch'
# alias checkout                                    'git checkout'
# alias clone                                       'git clone'
# alias commit                                      'git commit -m'
# alias fetch                                       'git fetch'
# alias pull                                        'git pull origin'
# alias push                                        'git push origin'
# alias tag                                         'git tag'
# alias newtag                                      'git tag -a'

# anaconda
alias cacti                                       'conda activate'
alias cdeac                                       'conda deactivate'

set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showupstream informative
set -g __fish_git_prompt_showdirtystate yes
set -g __fish_git_prompt_char_stateseparator      ' '
set -g __fish_git_prompt_char_cleanstate          '✔'
set -g __fish_git_prompt_char_dirtystate          '✚'
set -g __fish_git_prompt_char_invalidstate        '✖'
set -g __fish_git_prompt_char_stagedstate         '●'
set -g __fish_git_prompt_char_stashstate          '⚑'
set -g __fish_git_prompt_char_untrackedfiles      '?'
set -g __fish_git_prompt_char_upstream_ahead      ''
set -g __fish_git_prompt_char_upstream_behind     ''
set -g __fish_git_prompt_char_upstream_diverged   'ﱟ'
set -g __fish_git_prompt_char_upstream_equal      ''
set -g __fish_git_prompt_char_upstream_prefix

#                                  ╭───────────╮
#                                  │ functions │
#                                  ╰───────────╯

# function config [];
#   BODY;
# end
