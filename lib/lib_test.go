/*
   Created by jinhan on 17-8-1.
   Tip:
   Update:
*/
package lib

import (
	"fmt"
	"os"
	"testing"
)

func TestMd5FS(t *testing.T) {
	file, err := os.Open("/home/kali/go/src/awsome_web/favicon.ico")
	if err != nil {
		return
	}
	defer file.Close()
	fmt.Printf("%v\n", Hashcode(Md5FS(file)))

	file, err = os.Open("/home/kali/go/src/awsome_web/main.go")
	if err != nil {
		return
	}
	defer file.Close()
	fmt.Printf("%v", Hashcode(Md5FS(file)))
}
