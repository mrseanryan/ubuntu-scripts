# Checkout a branch from someone's fork

set -e

if [[ $# -ne 3 ]]; then
    echo "USAGE: $0 <other fork alias> <other fork git repo URL> <branch>"
    echo "EXAMPLE: $0 thewilkybarkid--hide-no-unused-exports-found-message  https://github.com/thewilkybarkid/ts-unused-exports.git  hide-no-unused-exports-found-message"
    exit 2
fi

other_fork_alias=$1
other_fork_git_repo_url=$2
branch=$3

git remote add $other_fork_alias $other_fork_git_repo_url
git fetch $other_fork_alias
git checkout $branch
