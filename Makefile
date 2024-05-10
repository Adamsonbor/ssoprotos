GREEN = "\033[32m"
DEFAULT = "\033[0m"

all:
	@protoc -I proto proto/sso/*.proto --go_out=./gen/go --go_opt=paths=source_relative --go-grpc_out=./gen/go --go-grpc_opt=paths=source_relative
	@echo $(GREEN)"created"$(DEFAULT)

.PHONY: proto
