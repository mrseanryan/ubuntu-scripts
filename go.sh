echo ---=== Installing stuff ... ===---
./install-stuff.sh

echo ---=== Configuring git ... ===---

./git-enable-credential-caching.sh

echo ---=== Add git aliases ... ===---

./git-create-aliases.sh

echo ---=== done ===---
