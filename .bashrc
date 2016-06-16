alias gi='git init && touch .gitignore && echo **/.DS_Store >> .gitignore && echo **/node_modules/ >> .gitignore'
alias bs2s='path=$@ && echo ${path//\\/\/}'
alias cpwd='pwd | pbcopy'
alias w2m='pbpaste | sed '\''s/\\/\//g'\'' | tr -d \\n | pbcopy'
