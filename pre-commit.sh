#!/bin/bash

# When cloning this repository for the first time, install this commit hook:
#   mkdir -p .git/hooks && ln -sf ../../pre-commit.sh .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit

### Are any HAML files changed or added?
if git status -s | grep '^M.\+\.haml$'
then
  # bundle exec rake build
  rake build
  find . -type f -name "*.html" | grep -v "_site" | xargs git add
fi

exit 0