#!/usr/bin/env bash

curl --user ${CIRCLE_TOKEN}: \
    --request POST \
    --form revision=b74e398ed58647b76166a36ecefed195480d0b59\
    --form config=./config.yml \
    --form notify=false \
        https://circleci.com/api/v1.1/project/github/kuzu-denton/remix/tree/master