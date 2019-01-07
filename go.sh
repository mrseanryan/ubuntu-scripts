echo ---=== Installing git and ftp server ... ===---
./install-git-and-ftp-server.sh

echo ---=== Configuring git ... ===---

./git-enable-credential-caching.sh

echo ---=== Add git aliases ... ===---

./git-create-aliases.sh

echo ---=== Add Visual Code ... ===---

./install-visual-code.sh

echo ---=== Add nvm, node 8 ... ===---

./install-nvm-and-node-8.sh

echo ---=== Add xclip ... ===---

./install-xclip.sh

echo ---=== Add docker ... ===---

./install-docker.sh

echo ---=== done ===---

