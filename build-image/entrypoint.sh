#! /bin/bash

pwd
tree
files=$(find . -type f \( -name "*.sh" -or -name "*.bash" \))

result=0
for f in $files; do
    printf "\033[0;35m $f \033[0m\n"
    shellcheck -x "$f" || result=$?
done

exit $result

