#!/usr/bin/env bash

# ref: https://digitalfortress.tech/tutorial/setting-up-git-prompt-step-by-step/

echo Install git prompt

../_ensure-home-bin.sh

cp ./_git-prompt.sh ~/bin/git-prompt.sh

cat ./_bashrc-git-prompt.txt >> ~/.bashrc

echo \* indicates that you have unstaged changes.
echo % indicates that you have untracked files.
echo = indicates that there is no difference between the head and the up-stream.  Also, \< would indicate that you are behind, \> would indicate that you are ahead and \<\> would mean that you have diverged.
echo + would indicate that you have staged files.
echo $ would indicate that you have stashed files.

echo [done] Install git prompt

# re-login to bash 
bash -l