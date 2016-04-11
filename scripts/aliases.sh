#!/bin/bash

# Base docker invocation setup 
#
# We need a few special things to happen every time a docker container
# is requested to start. One of these things is to recalculate the 
# shell expansion of $(pwd). The value of that expansion needs to follow
# the user around.

function dok_exec() {
  cmd="docker run --rm -ti -v $(pwd):/usr/src/app -w /usr/src/app -P $@"
  sh -c $cmd
}

# antlr
alias antlr4="dok_exec --entrypoint java tuttlem/antlr org.antlr.v4.Tool"
alias grun="dok_exec --entrypoint java tuttlem/antlr org.antlr.v4.gui.TestRig"

# awscli
alias aws="dok_exec -v ~/.aws:/root/.aws --entrypoint aws tuttlem/awscli:latest"

# typesafe activator
alias activator="dok_exec --entrypoint activator -p 8888:8888 -p 8080:8080 tuttlem/activator"

# asp.net container
alias dnx="dok_exec --entrypoint dnx microsoft/aspnet:latest"
alias dnu="dok_exec --entrypoint dnu microsoft/aspnet:latest"
alias dnvm="dok_exec --entrypoint dnvm microsoft/aspnet:latest"

# haskell container
alias ghc="dok_exec --entrypoint ghc haskell:latest"
alias ghci="dok_exec --entrypoint ghci haskell:latest"
alias cabal="dok_exec --entrypoint cabal haskell:latest"

# maven container
alias mvn="dok_exec --entrypoint mvn maven:latest"

# java container
alias java="dok_exec --entrypoint java java:latest"
alias javac="dok_exec --entrypoint javac java:latest"
alias jar="dok_exec --entrypoint jar java:latest"
alias keytool="dok_exec --entrypoint keytool java:latest"

# node container
alias node="dok_exec -p 3000:3000 --entrypoint node node:latest"
alias npm="dok_exec -p 3000:3000 --entrypoint npm node:latest"

# mongo container
alias mongo="dok_exec --entrypoint mongo mongo:latest"
alias mongodump="dok_exec --entrypoint mongodump mongo:latest"
alias mongoexport="dok_exec --entrypoint mongoexport mongo:latest"
alias mongotop="dok_exec --entrypoint mongotop mongo:latest"
alias mongostat="dok_exec --entrypoint mongostat mongo:latest"
alias mongoperf="dok_exec --entrypoint mongoperf mongo:latest"
alias mongorestore="dok_exec --entrypoint mongorestore mongo:latest"

# mono container
alias mono="dok_exec --entrypoint mono mono:latest"
alias mcs="dok_exec --entrypoint mcs mono:latest"
alias gacutil="dok_exec --entrypoint gacutil mono:latest"
alias xsp="dok_exec --entrypoint xsp mono:latest"
alias mono-config="dok_exec --entrypoint mono-config mono:latest"
alias ilasm="dok_exec --entrypoint ilasm mono:latest"
alias monodis="dok_exec --entrypoint monodis mono:latest"
alias monop="dok_exec --entrypoint monop mono:latest"

# postgres container
alias pg="dok_exec --entrypoint pg postgres:latest"
alias pg_dump="dok_exec --entrypoint pg_dump postgres:latest"
alias pg_restore="dok_exec --entrypoint pg_restore postgres:latest"
alias psql="dok_exec --entrypoint psql postgres:latest"

# redis container
alias redis-cli="dok_exec --entrypoint redis-cli redis:latest"

# scala container
alias scala="dok_exec --entrypoint scala tuttlem/scala"
alias scalac="dok_exec --entrypoint scalac tuttlem/scala"
