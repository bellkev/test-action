#! /bin/sh

set -ux

env
curl --request POST \
  --url "https://api.github.com/repos/$TEST_REPO/issues" \
  --header "authorization: Bearer $GITHUB_TOKEN" \
  --header 'content-type: application/json' \
  --data '{
    "title": "Automated issue from test-action",
    "body": "This issue was automatically created by the GitHub Action workflow."
    }' \
  --fail
