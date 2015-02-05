#!/bin/bash

# When cloning this repository for the first time, install this commit hook:
#   mkdir -p .git/hooks && ln -sf ../../pre-commit.sh .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit

### Are any Sass files canged and added?
if git status -s | grep  '^M.\+\.haml$'
then
  rake build
  git add -f **/*.html
fi

exit 0