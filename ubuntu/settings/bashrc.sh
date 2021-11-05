# echo new line after every shell command
export PROMPT_COMMAND='printf "$(tput dim)%"$COLUMNS"s$(tput sgr0)" | tr " " "-"'
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias cd......="cd ../../../../.."


