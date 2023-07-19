# Tmux init
export CUDA_VISIBLE_DEVICES="$(tmux display-message -p '#S')"
echo "CUDA_VISIBLE_DEVICES=$CUDA_VISIBLE_DEVICES"

tn() {
    tmux new -s "$1"
}
ta() {
    tmux attach -t "$1"
}
tk() {
    tmux kill-session -a "$1"
}
alias tls="tmux ls"
