if status is-interactive
    # Commands to run in interactive sessions can go here
end

bind \cf tmux-sessionizer

# Sync history - https://blog.katriel.co.uk/fish-history-sync
function save_history --on-event fish_preexec
    history --save
end
bind \e\[A 'history --merge ; up-or-search'
bind \cp 'history --merge ; up-or-search'
bind \cr 'history-pager' # for some reason i cant do history --merge before

zoxide init fish | source
starship init fish | source
