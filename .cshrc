##############################################################################################
# Set up C shell environment:
# Colors!
set        USER_RED="%{\033[1;31m%}"
set      USER_GREEN="%{\033[1;32m%}"
set     USER_YELLOW="%{\033[1;33m%}"
set       USER_BLUE="%{\033[1;34m%}"
set    USER_MAGENTA="%{\033[1;35m%}"
set       USER_CYAN="%{\033[1;36m%}"
set      USER_WHITE="%{\033[1;37m%}"
set      USER_BLACK="%{\033[0;38m%}"
set        USER_END="%{\033[0m%}"
set USER_BACKGROUND="%{\e]11;#bababa\a%}"
alias setprompt 'set prompt="${USER_BACKGROUND}[${USER_GREEN}%n${USER_WHITE} @ %m ${USER_RED}%c${USER_BLACK} ]${USER_END} "'
#unset red green yellow blue magenta cyan yellow white black end background
##############################################################################################
