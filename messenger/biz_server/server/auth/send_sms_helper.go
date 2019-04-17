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

package auth

import (
	"encoding/json"
	"errors"
	"io/ioutil"
	"net/http"
	"os"

	"github.com/golang/glog"
)

// TODO(@benqi): impl sendSms

type SendSmsF func(phoneNumber, code, codeHash string, sentCodeType int) error

func sendSms(phoneNumber, code, codeHash string, sentCodeType int) error {
	// TODO(@benqi): impl sendSms
	url := "https://api.hnnnb.com/test/sms"
	params := make(map[string]string)
	params["code"] = code
	params["type"] = "mobile"
	params["country_code"] = "86"
	params["receiver"] = phoneNumber
	params["template"] = "register"

	type Resp struct {
		Code int    `json:"code"`
		Msg  string `json:"msg"`
	}
	var resp Resp
	err := HttpGet(url, params, &resp)
	if err != nil {
		glog.Error(err.Error())
		return err
	}
	if resp.Code != 200 {
		glog.Error("sms send fail")
		return errors.New("sms send fail")
	}

	return nil
}

func getSendSmsFunc() SendSmsF {

	return sendSms
	//return nil
}

func HttpGet(link string, params map[string]string, resp interface{}) error {
	glog.Infof("Http Get Request, url:", link, "params:", params)

	req, err := http.NewRequest("GET", link, nil)
	if err != nil {
		glog.Error(err.Error())
		os.Exit(1)
	}

	q := req.URL.Query()
	if params != nil {
		for k, v := range params {
			q.Add(k, v)
		}
	}

	req.URL.RawQuery = q.Encode()

	response, err := http.Get(req.URL.String())
	if err != nil {
		glog.Error(err.Error())
		return err
	}

	defer response.Body.Close()
	body, err := ioutil.ReadAll(response.Body)
	if err != nil {
		glog.Error(err.Error())
		return err
	}

	err = json.Unmarshal(body, &resp)
	if err != nil {
		glog.Error(err.Error())
		return err
	}

	return nil
}
