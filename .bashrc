alias gi='git init && touch .gitignore && echo **/.DS_Store >> .gitignore && echo **/node_modules/ >> .gitignore'
alias bs2s='path=$@ && echo ${path//\\/\/}'
alias cpwd='pwd | pbcopy'
alias w2m='pbpaste | sed '\''s/\\/\//g'\'' | tr -d \\n | pbcopy'
function diffzip() {
  git diff --diff-filter=MACR --name-only $1 $2 > diff.txt && zip -r archive.zip `git diff --diff-filter=MACR --name-only $1 $2`
}
