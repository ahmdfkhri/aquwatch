PROTO_FILES = $(wildcard protos/*.proto)
DART_OUT_DIR = mobile/lib/src/generated

.PHONY: proto-go proto-dart proto-all clean

proto-go:
	@echo "Generating Go protobuf files..."
	protoc --go_out ./backend/gen --go-grpc_out ./backend/gen protos/*.proto

proto-dart:
	@echo "Generating Dart protobuf files..."
	@mkdir -p $(DART_OUT_DIR)
	protoc --dart_out=grpc:mobile/lib/src/generated \
       -Iprotos \
       protos/*.proto \
			 google/protobuf/timestamp.proto

proto-all: proto-go proto-dart

clean:
	rm -rf backend/gen/*
	rm -rf $(DART_OUT_DIR)/*