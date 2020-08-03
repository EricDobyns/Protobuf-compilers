#!/bin/sh

ROOT_DIR="Protobuf-compilers" # NOTE: Make sure to rename this variable to match the root directory of this project
PROTO_PATH=$(pwd)/proto
OUTPUT_DIR=$(pwd)/pb/go

# Validate current location
if [ ${PWD##*/} != $ROOT_DIR ]; then
	echo "Warning: Please make sure you are in the root directory of this project. ROOT_DIR should equal ${PWD##*/}"
	exit 1
fi

# Create output directory if doesnt exist
mkdir -p $OUTPUT_DIR 

# Clean output directory if already exists
rm -rf $OUTPUT_DIR/**/*

# Compile protobuf files
echo "Compiling Protobuf packages for Golang..."
for file in $PROTO_PATH/*.proto; do
	if [ ! -f $file ]; then
		continue
	fi

	# Get packaage name
	PACKAGE_NAME="${file%"${file##*[!/]}"}"
	PACKAGE_NAME="${PACKAGE_NAME##*/}" 
	PACKAGE_NAME="${PACKAGE_NAME%"${PACKAGE_NAME##*[.proto]}"}"
	PACKAGE_NAME=${PACKAGE_NAME%.proto}

	# Generate pb files
	protoc -I $PROTO_PATH $PROTO_PATH/$PACKAGE_NAME.proto --go_out=plugins=grpc:$OUTPUT_DIR
done

# Exit
exit 0
