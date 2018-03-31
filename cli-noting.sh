USER_NAME=leo424y
REPO_NAME=notes
NOTE_PATH=~/Documents/GitHub/$REPO_NAME
DATE=$(date +"%Y%m%d")
NOW=$(date +"%Y%m%d-%R")
alias 四="f"
j() {
  vi "$NOTE_PATH/$DATE/$NOW-$1-$2-$3"
}
f(){
  mkdir $DATE
  echo "$*" > "$NOTE_PATH/$DATE/$NOW-$1-$2-$3"
  cd $NOTE_PATH || exit
  git checkout -B $DATE
  git add .
  git commit -m "$*"
  git push --all
  clear
  echo "https://github.com/$USER_NAME/$REPO_NAME/blob/$DATE/$DATE/$NOW-$1-$2-$3" | pbcopy
}
js() {
  tree $NOTE_PATH | grep "$*"
}
