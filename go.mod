module github.com/liuhuanqiang/chatengine

replace (
	cloud.google.com/go => github.com/googleapis/google-cloud-go v0.37.4
	github.com/liuhuanqiang/chatengine/service/auth_session => github.com/liuhuanqiang/chatengine/service/auth_session v0.0.0-20190419070324-686300c400cd
	golang.org/x/crypto => github.com/golang/crypto v0.0.0-20190418165655-df01cb2cc480
	golang.org/x/exp => github.com/golang/exp v0.0.0-20190417140011-e40e924fdd3f
	golang.org/x/image => github.com/golang/image v0.0.0-20190417020941-4e30a6eb7d9a
	golang.org/x/lint => github.com/golang/lint v0.0.0-20190409202823-959b441ac422
	golang.org/x/mobile => github.com/golang/mobile v0.0.0-20190415191353-3e0bab5405d6
	golang.org/x/net => github.com/golang/net v0.0.0-20190419010253-1f3472d942ba
	golang.org/x/oauth2 => github.com/golang/oauth2 v0.0.0-20190402181905-9f3314589c9a
	golang.org/x/sync => github.com/golang/sync v0.0.0-20190412183630-56d357773e84
	golang.org/x/sys => github.com/golang/sys v0.0.0-20190418153312-f0ce4c0180be
	golang.org/x/text => github.com/golang/text v0.3.0
	golang.org/x/time => github.com/golang/time v0.0.0-20190308202827-9d24e82272b4
	golang.org/x/tools => github.com/golang/tools v0.0.0-20190418235243-4796d4bd3df0
	google.golang.org/api => github.com/googleapis/google-api-go-client v0.3.2
	google.golang.org/appengine => github.com/golang/appengine v1.5.0
	google.golang.org/genproto => github.com/google/go-genproto v0.0.0-20190418145605-e7d98fc518a7
	google.golang.org/grpc => github.com/grpc/grpc-go v1.20.1
	honnef.co/go/tools => github.com/dominikh/go-tools v0.0.0-20190418001031-e561f6794a2a

)

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
	github.com/liuhuanqiang/chatengine/service/auth_session v0.0.0-20190419070324-686300c400cd
	github.com/ttacon/builder v0.0.0-20170518171403-c099f663e1c2 // indirect
	github.com/ttacon/libphonenumber v1.0.1
	golang.org/x/net v0.0.0-20190419010253-1f3472d942ba
	google.golang.org/grpc v1.20.1
)
