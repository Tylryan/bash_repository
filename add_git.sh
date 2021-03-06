#! /bin/bash

message=$1
location=$2

# If there is neither a message nor location
if [ -z $1 ] && [ -z $2 ]
    then
        #Then push in the current directoryw ith the message being the current date and time
        git add . && git commit	-m "Auto-commit on `date +"%A, %m-%d-%Y, at %I:%M %p"`" && git push
# If there is a message but no location ...
elif [ -n "$message" ] && [ -z "$location" ]
    then
# 	Then do a git push in the current directory with the specified message 
	git add . && git commit -m "${message}" && git push
# If there is a message and a location ...
elif [ -n "$message" ] && [ -n "$location" ]
    then
#         Then go to that location and do a git push with the specified message
        cd "${location}" && git add . && git commit -m "${message}" && git push
fi
