alias python=python3.8
export EDITOR=vim
set PATH /home/eternity/.fzf/bin $PATH
#nvm use --lts

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/eternity/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/eternity/google_cloud_sdk/google-cloud-sdk/path.fish.inc' ]; . '/home/eternity/google_cloud_sdk/google-cloud-sdk/path.fish.inc'; end

# some paths shortcuts
set Download /mnt/c/Users/bingu/Downloads
set Class /mnt/c/zy/classes/columbia

# fzf hotkey
#set -U FZF_CTRL_T_COMMAND "rg \$dir --files --hidden -uu"
set -U FZF_CTRL_T_COMMAND "rg \$dir --files --hidden -uu -g '!.git'"
set -U FZF_ALT_C_COMMAND "find \$dir -type d -not -iwholename '*.git*'"
#set -U FZF_ALT_C_COMMAND "rg \$dir --sort-files --files --hidden -uu --null 2> /dev/null | xargs -0 dirname | uniq"
#set -U FZF_CTRL_T_COMMAND ""
#set -U FZF_ALT_C_COMMAND ""
#set -U FZF_CTRL_T_COMMAND "fd \$dir --type file --follow --hidden --exclude .git"
#set -U FZF_ALT_C_COMMAND "fd \$dir --type directory --follow --hidden"
