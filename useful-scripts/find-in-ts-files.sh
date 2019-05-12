# ref: https://stackoverflow.com/questions/6153152/find-files-containing-a-given-text

egrep -lir --include=*.ts --include=*.tsx "$1"
