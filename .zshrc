source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle command-not-found
antigen bundle git
antigen bundle pip

# Syntax highlighting bundle.
antigen bundle zdharma-continuum/fast-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle joel-porquet/zsh-dircolors-solarized.git

# Load the theme.
# antigen theme robbyrussell
antigen theme ys

# Tell Antigen that you're done.
antigen apply

# goproxy
export GO111MODULE=on
export GOPROXY=https://goproxy.cn,direct

export host_ip=$(ip route | grep default | awk '{print $3}')
alias proxy="export http_proxy=http://$host_ip:7890;export https_proxy=http://$host_ip:7890"
alias gitproxy="git config --global http.proxy \"socks5://$host_ip:7890\";git config --global https.proxy \"socks5://$host_ip:7890\""
alias unproxy='unset http_proxy;unset https_proxy'
alias gitunproxy="git config --global --unset http.proxy;git config --global --unset https.proxy"

fortune | cowsay | lolcat
