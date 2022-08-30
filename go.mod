module test.com/testLib

go 1.18

replace github.com/pranavkv/golib_v1/BaseHandler => ../goLib_v1/BaseHandler

replace github.com/pranavkv/golib_v1/libError => ../goLib_v1/libError

replace github.com/pranavkv/golib_v1/LibUtils => ../goLib_v1/LibUtils

replace github.com/pranavkv/golib_v1/LibData => ../goLib_v1/LibData

require github.com/pranavkv/golib_v1/BaseHandler v0.0.0-20220803094427-1f34b16f7f2e

require (
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/cespare/xxhash/v2 v2.1.2 // indirect
	github.com/fsnotify/fsnotify v1.5.4 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/hashicorp/hcl v1.0.0 // indirect
	github.com/magiconair/properties v1.8.6 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.1 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/pelletier/go-toml v1.9.5 // indirect
	github.com/pelletier/go-toml/v2 v2.0.1 // indirect
	github.com/pranavkv/golib_v1/libError v0.0.0-20220803094427-1f34b16f7f2e // indirect
	github.com/prometheus/client_golang v1.13.0 // indirect
	github.com/prometheus/client_model v0.2.0 // indirect
	github.com/prometheus/common v0.37.0 // indirect
	github.com/prometheus/procfs v0.8.0 // indirect
	github.com/sirupsen/logrus v1.9.0 // indirect
	github.com/spf13/afero v1.8.2 // indirect
	github.com/spf13/cast v1.5.0 // indirect
	github.com/spf13/jwalterweatherman v1.1.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/spf13/viper v1.12.0 // indirect
	github.com/subosito/gotenv v1.3.0 // indirect
	golang.org/x/sys v0.0.0-20220715151400-c0bba94af5f8 // indirect
	golang.org/x/text v0.3.7 // indirect
	google.golang.org/protobuf v1.28.1 // indirect
	gopkg.in/ini.v1 v1.66.4 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.0 // indirect
)

require github.com/pranavkv/golib_v1/LibUtils v0.0.0-20220803094427-1f34b16f7f2e

require github.com/pranavkv/golib_v1/LibData v0.0.0-20220803094427-1f34b16f7f2e
