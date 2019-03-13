#!/bin/bash

usage="\nUsage:  gitLineNumber.sh repoPath\n"

# if no args specified, show usage
if [ $# -le 0 ]; then
  echo -e ${usage}
  exit 1
fi

read -p "please enter start time: "	start
read -p "please enter end time: "	end

cd ${1}

for branchName in $(git branch | sed 's/\*//g')
do
	git checkout ${branchName}
	
	for author in $(git log --pretty='%aN' | sort -u)
	do
		echo -e author: ${author}
		git log --shortstat --since=${start} --until=${end} --author=${author} --pretty=tformat: --numstat | gawk '{ add += $1 ; subs += $2 ; loc += $1 + $2 } END { printf "added lines: %s removed lines : %s total lines: %s\n",add,subs,loc }' 
	done
	
done
