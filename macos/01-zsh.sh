#!/usr/bin/env bash

# Install Zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

# Install Zsh Syntax Highlighting
brew install zsh-syntax-highlighting
echo 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc

# Install Zsh Auto Suggestions
brew install zsh-autosuggestions
echo 'source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc

# Install Zsh Completitions
brew install zsh-completions
echo 'if type brew &>/dev/null; then' >> ~/.zshrc
echo '  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH >> ~/.zshrc
echo '  autoload -Uz compinit' >> ~/.zshrc
echo '  compinit' >> ~/.zshrc
echo 'fi' >> ~/.zshrc

rm -f ~/.zcompdump; compinit
chmod -R go-w "$(brew --prefix)/share"

# Install Zsh History Substring Search
brew install zsh-history-substring-search
echo 'source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh' >> ~/.zshrc

# Configure Zsh
echo 'HISTFILE="$HOME/.zsh_history"' >> ~/.zshrc
echo 'HISTSIZE=50000  # How many lines of history to keep in memory' >> ~/.zshrc
echo 'SAVEHIST=500000 # Number of history entries to save to disk' >> ~/.zshrc
echo 'HISTDUP=erase   # Erase duplicates in the history file' >> ~/.zshrc
echo 'setopt extended_history       # Record timestamp of command in HISTFILE' >> ~/.zshrc
echo 'setopt appendhistory          # Append history to the history file (no overwriting)' >> ~/.zshrc
echo 'setopt hist_expire_dups_first # Delete duplicates first when HISTFILE size exceeds HISTSIZE' >> ~/.zshrc
echo 'setopt sharehistory           # Share history across terminals' >> ~/.zshrc
echo 'setopt incappendhistory       # Immediately append to the history file, not just when a term is killed' >> ~/.zshrc
echo 'setopt hist_ignore_dups       # Ignore duplicated commands history list' >> ~/.zshrc
echo 'setopt hist_ignore_space      # Ignore commands that start with space' >> ~/.zshrc
echo 'setopt hist_verify            # Show command with history expansion to user before running it' >> ~/.zshrc
echo 'setopt inc_append_history     # Add commands to HISTFILE in order of execution' >> ~/.zshrc
echo 'setopt share_history          # Share command history data' >> ~/.zshrc

#plugins=(colored-man-pages osx brew dotenv git vscode terraform python pip pipenv autopep8 pylint node npm aws docker docker-compose minikube kubectl kops helm)

# Clean up Brew
brew cleanup

# Apply changes to Zsh
source ~/.zshrc
