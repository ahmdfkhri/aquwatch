PROTO_DIR = ../protos
PROTO_FILES = $(wildcard $(PROTO_DIR)/*.proto)
GEN_DIR = gen

gen:
	@mkdir -p $(GEN_DIR)
	protoc --go_out=$(GEN_DIR) --go_opt=paths=source_relative \
	       --go-grpc_out=$(GEN_DIR) --go-grpc_opt=paths=source_relative \
	       -I$(PROTO_DIR) \
	       $(PROTO_FILES)