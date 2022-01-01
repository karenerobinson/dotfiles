# following is to work with python3 and pyenv
# suggested by https://opensource.com/article/19/5/python-3-default-mac
# added by kerobinso Dec 31, 2021

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias pip=/usr/local/bin/pip3

# end additions for python3 and pyenv
