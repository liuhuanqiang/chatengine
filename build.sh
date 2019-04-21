#! /usr/bin/env bash

export GO111MODULE=on

GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./bin/frontend ./access/frontend
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./bin/auth_key ./access/auth_key
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./bin/auth_session ./service/auth_session
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./bin/sync ./messenger/sync
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./bin/upload ./messenger/upload
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./bin/document ./service/document
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./bin/biz_server ./messenger/biz_server
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./bin/session ./access/session