#! /usr/bin/env bash

git_pull
docker stop chatengine && docker rm chatengine
db chatengine
s chatengine
