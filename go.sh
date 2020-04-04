echo ---=== Installing git, yarn ... ===---
./install-git-yarn-etc.sh

echo ---=== Configuring git ... ===---

./git/git-enable-credential-caching.sh

echo ---=== Add git aliases ... ===---

./git/git-create-aliases.sh

echo ---=== Add Visual Code ... ===---

./install-visual-code.sh

echo ---=== Add nvm, node 8 ... ===---

./install-nvm-and-node-8.sh

echo ---=== Add xclip ... ===---

./install-xclip.sh

if [ $1 == '--docker' ]
    then
        echo ---=== Add docker ... ===---

        ./install-docker.sh
        ./install-docker-compose.sh
fi

echo ---=== cleanup ===---

sudo apt autoremove

echo ---=== done ===---

./done.sh

