# useful-scripts readme

## note about the link files

link files were created as follows: (so we can type X rather than X.sh)

```
ln -s lstree.sh  lstree
chmod +x lstree
```

## note about the countdown program

This is precompiled and downloaded from github.

origin = https://github.com/antonmedv/countdown/releases

The current binary works ok on Ubuntu.

To install for Mac:
```
brew install go

go get github.com/antonmedv/countdown

chomd +x countdown
```
