// Copyright (c) 2018-present,  NebulaChat Studio (https://nebula.chat).
//  All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Author: Benqi (wubenqi@gmail.com)

package channels

import (
    "fmt"
    "github.com/golang/glog"
    "golang.org/x/net/context"
    "github.com/liuhuanqiang/chatengine/pkg/grpc_util"
    "github.com/liuhuanqiang/chatengine/pkg/logger"
    "github.com/liuhuanqiang/chatengine/mtproto"
)

// channels.readHistory#cc104937 channel:InputChannel max_id:int = Bool;
func (s *ChannelsServiceImpl) ChannelsReadHistory(ctx context.Context, request *mtproto.TLChannelsReadHistory) (*mtproto.Bool, error) {
    md := grpc_util.RpcMetadataFromIncoming(ctx)
    glog.Infof("channels.readHistory - metadata: %s, request: %s", logger.JsonDebugData(md), logger.JsonDebugData(request))

    // Sorry: not impl ChannelsReadHistory logic
    glog.Warning("channels.readHistory blocked, License key from https://nebula.chat required to unlock enterprise features.")

    return nil, fmt.Errorf("not imp ChannelsReadHistory")
}
