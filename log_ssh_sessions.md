# To log ssh sessions add the following to your .bashrc (bash) or .zshrc (zshell)

    # Logging ssh output
    ssh() { /usr/bin/ssh "$@" |& tee -a "$HOME/ssh_history/$(date +%Y-%m-%d_%H-%M-%S).session" }
