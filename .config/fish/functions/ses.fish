# open sesh as tmux session picker
function ses
    set session (sesh list --icons | fzf-tmux -p 60%,60% \
    --no-sort --ansi --border-label 'sesh' \
    --header 'alt-k: tmux kill' \
    --bind 'alt-k:execute(tmux kill-session -t {2..})+reload(sesh list --icons)' \
    --preview-window 'up' \
    --preview 'sesh preview {}')

    if test -n "$session"
        sesh connect "$session"
    end
end
