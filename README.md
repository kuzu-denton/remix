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
- From this directory, run `prisma deploy`

# FAQ

## What does the boilerplate provide?

An initialized prisma configuration, and client library.
For more, see [Prisma: Setting Up A New Database](https://www.prisma.io/docs/get-started/01-setting-up-prisma-new-database-a002/)