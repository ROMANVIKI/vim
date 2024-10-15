
DJANGO_DIR="$HOME/Projects/vchat/backend"
REACT_DIR="$HOME/Projects/vchat/frontend"
VIM_DIR="$HOME/Projects/vchat"  # Directory for vim

# Tmux session names
VIM_SESSION="vim_session"
DEV_SESSION="dev_session"

# Start vim session if not exists
tmux has-session -t $VIM_SESSION 2>/dev/null
if [ $? != 0 ]; then
    tmux new-session -d -s $VIM_SESSION -n 'vim-vchat'
    tmux send-keys -t $VIM_SESSION:0 "cd $VIM_DIR && vim ." C-m
fi

# Start dev session if not exists
tmux has-session -t $DEV_SESSION 2>/dev/null
if [ $? != 0 ]; then
    tmux new-session -d -s $DEV_SESSION -n 'Development'
    tmux send-keys -t $DEV_SESSION:0 "cd $DJANGO_DIR && source env/bin/activate && docker compose up" C-m
    tmux split-window -h -t $DEV_SESSION:0
    tmux send-keys -t $DEV_SESSION:0.1 "cd $REACT_DIR && npm run dev" C-m
fi

# Attach to dev session by default
if [ "$1" == "--dev" ]; then
    tmux attach-session -t $DEV_SESSION
else
    tmux attach-session -t $VIM_SESSION
fi





