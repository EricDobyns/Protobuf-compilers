# Default command
.PHONY: default
default: proto

# Compile protobuf packages for all platforms
.PHONY: proto
proto: clean proto_go proto_swift

# Compile protobuf packages for golang
.PHONY: proto_go
proto_go:
	@./scripts/proto_go.sh

# Compile protobuf packages for swift
.PHONY: proto_swift
proto_swift:
	@./scripts/proto_swift.sh

# Remove all temporary files
.PHONY: clean
clean:
	@./scripts/clean.sh