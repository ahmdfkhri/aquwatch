PROTO_FILES = $(wildcard protos/*.proto)
DART_OUT_DIR = mobile/lib/src/generated

.PHONY: proto-go proto-dart proto-all clean

proto-go:
	@echo "Generating Go protobuf files..."
	cd backend && make gen

proto-dart:
	@echo "Generating Dart protobuf files..."
	@mkdir -p $(DART_OUT_DIR)
	protoc --dart_out=grpc:$(DART_OUT_DIR) \
	       -Iprotos \
	       $(PROTO_FILES)

proto-all: proto-go proto-dart

clean:
	rm -rf backend/gen/*
	rm -rf $(DART_OUT_DIR)/*