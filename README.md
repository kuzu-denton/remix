# Proposed architecture

```
- React / RN
- (consider Elixir ?)
- Prisma
- Postgres
- Docker/-Machine
- CircleCI
```

### Setup

- You will probably need Node 10 or 11 (haven't tested with older versionss)
- Install Docker (if not already installed) [link](https://www.docker.com/products/docker-desktop)
- Turn on Docker Daemon (eg. Docker for Mac)
- From this directory, run `docker-compose up -d`
- Install Prisma with NPM or Homebrew
```
brew tap prisma/prisma
brew install prisma
---- or ----
npm install -g prisma
```
- From this directory, run `prisma deploy`, this spins up the Prisma server and runs any migrations resulting from changes to the data model.

# FAQ

## What does the boilerplate provide?

An initialized prisma configuration, and client library.
For more, see [Prisma: Setting Up A New Database](https://www.prisma.io/docs/get-started/01-setting-up-prisma-new-database-a002/)

# TODO's

- https://trello.com/b/E8K5nMTq/kuzu

# Testing CircleCI Locally

- Get a user token from CircleCI
- Find the commit hash you want to build from
- Create a shell script, and add the following:

```sh
#!/usr/bin/env bash
curl --user ${CIRCLE_TOKEN}: \
    --request POST \
    --form revision=<commit hash>\
    --form config=@config.yml \
    --form notify=false \
        https://circleci.com/api/v1.1/project/github/kuzu-denton/remix/tree/master
```