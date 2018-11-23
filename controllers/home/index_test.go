/*
   Created by jinhan on 17-10-18.
   Tip:
   Update:
*/
package home

import (
	"encoding/json"
	"fmt"
	"testing"

	"github.com/admin/awsome_web/conf"
	"github.com/admin/awsome_web/models/util"
)

func init() {
	conf.ForTestInitConfig()
	util.Connect()
}

func TestGetNav(t *testing.T) {
	a := GetNav(0, 0)
	b, _ := json.Marshal(a)
	fmt.Printf("%v", string(b))
}
