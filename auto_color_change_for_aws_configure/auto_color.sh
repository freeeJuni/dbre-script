#!/bin/bash

CURRENT_PROFILE=$(aws configure list | grep 'profile' | awk '{print $2}')

case "$CURRENT_PROFILE" in
  "awssso-sandbox-sre-dbre-128658538965")
    # light green
    echo -e "\033]11;#D8FBD8\007"
    ;;
  "awssso-c-fo-com-057575985710")
    # light red 
    echo -e "\033]11;#FFEBEB\007"
    echo -e "\033[1;30m"
    echo "because you connected prod environment, your terminal background color was changed!"
    ;;
  *)
    echo "no change your terminal background!"
    ;;
esac

#####
##### setup vi ~/.zshrc 
#####
# Automatically change colors for the AWS configure command
#function aws_alias_cmd() {
#  if [[ "$1 $2" == "configure sso" ]]; then
#    command aws "$@"
#    /path/to/aws_sso_color.sh
#  else
#    command aws "$@"
#  fi
#}

#alias aws="aws_alias_cmd"
