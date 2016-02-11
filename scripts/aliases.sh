#!/bin/bash

# Alias setup
#
# This script will setup useful docker container invocations asaliases that 
# will be available to the user at the console. This is to save on needing to 
# create a script file everytime a new container will be generally-purposed

dinv_pfx="docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app -P"

alias dokrun="$dinv_pfx"

# awscli
alias aws="$dinv_pfx -v ~/.aws:/root/.aws --entrypoint aws tuttlem/awscli:latest"

# typesafe activator
alias activator="$dinv_pfx --entrypoint activator -p 8888:8888 -p 8080:8080 tuttlem/activator"

# asp.net container
alias dnx="$dinv_pfx --entrypoint dnx microsoft/aspnet:latest"
alias dnu="$dinv_pfx --entrypoint dnu microsoft/aspnet:latest"
alias dnvm="$dinv_pfx --entrypoint dnvm microsoft/aspnet:latest"

# haskell container
alias ghc="$dinv_pfx --entrypoint ghc haskell:latest"
alias ghci="$dinv_pfx --entrypoint ghci haskell:latest"
alias cabal="$dinv_pfx --entrypoint cabal haskell:latest"

# java container
alias java="$dinv_pfx --entrypoint java java:latest"
alias javac="$dinv_pfx --entrypoint javac java:latest"
alias jar="$dinv_pfx --entrypoint jar java:latest"

# node container
alias node="$dinv_pfx --entrypoint node node:latest"
alias npm="$dinv_pfx --entrypoint npm node:latest"

# mongo container
alias mongo="$dinv_pfx --entrypoint mongo mongo:latest"
alias mongodump="$dinv_pfx --entrypoint mongodump mongo:latest"
alias mongoexport="$dinv_pfx --entrypoint mongoexport mongo:latest"
alias mongotop="$dinv_pfx --entrypoint mongotop mongo:latest"
alias mongostat="$dinv_pfx --entrypoint mongostat mongo:latest"
alias mongoperf="$dinv_pfx --entrypoint mongoperf mongo:latest"
alias mongorestore="$dinv_pfx --entrypoint mongorestore mongo:latest"

# postgres container
alias pg="$dinv_pfx --entrypoint pg postgres:latest"
alias pg_dump="$dinv_pfx --entrypoint pg_dump postgres:latest"
alias pg_restore="$dinv_pfx --entrypoint pg_restore postgres:latest"
alias psql="$dinv_pfx --entrypoint psql postgres:latest"

# redis container
alias redis-cli="$dinv_pfx --entrypoint redis-cli redis:latest"

# scala container
alias scala="$dinv_pfx --entrypoint scala tuttlem/scala"
alias scalac="$dinv_pfx --entrypoint scalac tuttlem/scala"
