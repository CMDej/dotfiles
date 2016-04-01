#!/usr/bin/env bash
# Installs brew zsh as default shell

echo ""
echo "› set brew zsh as default shell"
zsh=$(which zsh)
if grep -Fxq "$zsh" /etc/shells
then
    echo "> brew zsh already added to /etc/shells --> continue"
else
    sudo sh -c "echo \"$zsh\" >> /etc/shells"
fi
chsh -s "$zsh"
