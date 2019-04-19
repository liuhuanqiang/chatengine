FROM golang:1.11-alpine AS build_base

RUN apk add bash git gcc g++ libc-dev

WORKDIR /Users/liuhuanqiang/gowork/src/github.com/liuhuanqiang/chatengine


ENV GO111MODULE=on

COPY go.mod .
COPY go.sum .

RUN go mod download

FROM build_base AS server_builder

COPY . .

RUN GOOS=linux GOARCH=amd64 go install -a -tags netgo -ldflags '-w -extldflags "-static"' ./access/frontend
RUN GOOS=linux GOARCH=amd64 go install -a -tags netgo -ldflags '-w -extldflags "-static"' ./access/auth_key
RUN GOOS=linux GOARCH=amd64 go install -a -tags netgo -ldflags '-w -extldflags "-static"' ./service/auth_session
RUN GOOS=linux GOARCH=amd64 go install -a -tags netgo -ldflags '-w -extldflags "-static"' ./messenger/sync
RUN GOOS=linux GOARCH=amd64 go install -a -tags netgo -ldflags '-w -extldflags "-static"' ./messenger/upload
RUN GOOS=linux GOARCH=amd64 go install -a -tags netgo -ldflags '-w -extldflags "-static"' ./service/document
RUN GOOS=linux GOARCH=amd64 go install -a -tags netgo -ldflags '-w -extldflags "-static"' ./messenger/biz_server
RUN GOOS=linux GOARCH=amd64 go install -a -tags netgo -ldflags '-w -extldflags "-static"' ./access/session


FROM alpine AS chatengine




COPY --from=server_builder /go/bin/frontend /bin/frontend
COPY --from=server_builder /go/bin/auth_key /bin/auth_key
COPY --from=server_builder /go/bin/auth_session /bin/auth_session
COPY --from=server_builder /go/bin/sync /bin/sync
COPY --from=server_builder /go/bin/upload /bin/upload
COPY --from=server_builder /go/bin/document /bin/document
COPY --from=server_builder /go/bin/biz_server /bin/biz_server
COPY --from=server_builder /go/bin/session /bin/session

ENTRYPOINT ["/bin/frontend"]