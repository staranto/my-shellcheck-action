#! /bin/bash

# Force a shellcheck error for testing
echo 'XX $PWD YY'

pwd
tree
find . -type f \( -name "*.sh" -or -name "*.bash" \)

shellcheck ./entrypoint.sh
exit $?
