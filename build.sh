#! /usr/bin/env bash

export GO111MODULE=on

GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./access/frontend/frontend ./access/frontend
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./access/auth_key/auth_key ./access/auth_key
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./service/auth_session/auth_session ./service/auth_session
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./messenger/sync/sync ./messenger/sync
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./messenger/upload/upload ./messenger/upload
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./service/document/document ./service/document
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./messenger/biz_server/biz_server ./messenger/biz_server
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build  -o ./access/session/session ./access/session