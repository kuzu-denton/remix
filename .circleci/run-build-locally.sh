#!/usr/bin/env bash

curl --user ${CIRCLE_TOKEN}: \
    --request POST \
    --form revision=<commit_hash>\
    --form config=./config.yml \
    --form notify=false \
        https://circleci.com/api/v1.1/project/github/kuzu-denton/remix/tree/master