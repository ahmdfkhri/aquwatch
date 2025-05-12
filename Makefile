PROTO_IN_DIR = protos/*.proto
GO_OUT_DIR = backend/gen
DART_OUT_DIR = mobile/lib/src/generated

GOOGLE_PROTO_DIR = protos/google/protobuf/*.proto

.PHONY: proto-go proto-dart proto-all clean

proto-go:
	@echo "Generating Go protobuf files..."
	@mkdir -p $(GO_OUT_DIR)
	@protoc --go_out $(GO_OUT_DIR) --go-grpc_out $(GO_OUT_DIR) $(PROTO_IN_DIR)
	@echo "Go protobuf files generated"

proto-dart:
	@echo "Generating Dart protobuf files..."
	@mkdir -p $(DART_OUT_DIR)
	@protoc --dart_out=grpc:mobile/lib/src/generated -Iprotos $(PROTO_IN_DIR) $(GOOGLE_PROTO_DIR)
	@echo "Dart protobuf files generated"

proto-all: clean proto-go proto-dart

clean:
	@echo "Clearing all generated files..."
	@rm -rf $(GO_OUT_DIR)/*
	@rm -rf $(DART_OUT_DIR)/*