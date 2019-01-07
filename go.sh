echo ---=== Installing git and ftp server ... ===---
./install-git-and-ftp-server.sh

echo ---=== Configuring git ... ===---

./git-enable-credential-caching.sh

echo ---=== Add git aliases ... ===---

./git-create-aliases.sh

echo ---=== Add Visual Code ... ===---

./install-visual-code.sh

echo ---=== done ===---

