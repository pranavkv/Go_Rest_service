module test.com/testLib

go 1.18

replace github.com/pranavkv/golib_v1/BaseHandler => ../goLib_v1/BaseHandler

replace github.com/pranavkv/golib_v1/libError => ../goLib_v1/libError

replace github.com/pranavkv/golib_v1/LibUtils => ../goLib_v1/LibUtils

replace github.com/pranavkv/golib_v1/LibData => ../goLib_v1/LibData

require github.com/pranavkv/golib_v1/BaseHandler v0.0.0-20220803094427-1f34b16f7f2e

require (
	github.com/pranavkv/golib_v1/libError v0.0.0-20220803094427-1f34b16f7f2e // indirect
	github.com/sirupsen/logrus v1.9.0 // indirect
	golang.org/x/sys v0.0.0-20220715151400-c0bba94af5f8 // indirect
)

require github.com/pranavkv/golib_v1/LibUtils v0.0.0-20220803094427-1f34b16f7f2e

require github.com/pranavkv/golib_v1/LibData v0.0.0-20220803094427-1f34b16f7f2e
