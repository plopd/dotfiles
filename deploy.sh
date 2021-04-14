#!/bin/bash

echo -e "\033[0;32mCommiting new updates to dotfiles to GitHub...\033[0m"

\cp -r ~/.vimrc ./vim/.vimrc
git add -A

msg="Add file changes `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push
