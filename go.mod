module github.com/liuhuanqiang/chatengine

replace github.com/liuhuanqiang/chatengine/service/auth_session => github.com/liuhuanqiang/chatengine/service/auth_session v0.0.0-20190418114752-0aedaed0da88

require (
	github.com/BurntSushi/toml v0.3.1
	github.com/bwmarrin/snowflake v0.3.0
	github.com/coreos/etcd v3.3.12+incompatible
	github.com/disintegration/imaging v1.6.0
	github.com/go-sql-driver/mysql v1.4.1
	github.com/gogo/protobuf v1.2.1
	github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b
	github.com/golang/protobuf v1.3.1
	github.com/gomodule/redigo v2.0.0+incompatible
	github.com/grpc-ecosystem/go-grpc-middleware v1.0.0
	github.com/jmoiron/sqlx v1.2.0
	golang.org/x/net v0.0.0-20190419010253-1f3472d942ba
	google.golang.org/grpc v1.20.1
)
