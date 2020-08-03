# Protobuf Compilers

This repository is a collection of scripts to automatically generate compiled source code from multiple protobuf definitions.

- [x] Support multiple proto files
- [x] Support Go
- [x] Support Swift
- [ ] Support Node.js
- [ ] Support Kotlin
- [ ] Support Java  

<br>

## Getting Started

```
Note: All `make` commands should be run from the project's root directory
```

#### Compile source code for all languages
``` bash
make
```

#### Compile source code for Go only
``` bash
make proto_go
```

#### Compile source code for Swift only
Please make sure to install the relevant swift plugins: https://github.com/grpc/grpc-swift#getting-the-protoc-plugins
``` bash
make proto_swift
```

#### Remove all temporary files and directories
``` bash
make clean
```

<br>

## Project Structure

### `/pb`

Compiled source code will go here. Scripts should automatically generate output directories if they do not exists.

### `/proto`

Protobuf definitions should go here. All protobuf files should be at the top level of this directory and not nested in subfolders. If you have internal imports make sure the relative path is set to the same directory.

### `/scripts`

Scripts to perform protoc compilations for all proto files for each language specified.

<br>

## Code of Conduct
Please see the [code of conduct](./.github/code_of_conduct.md) form.

## Contributing
Please see the [contributing](./.github/code_of_conduct.md) form.

## Pull Requests
Please see the [pull request](./.github/code_of_conduct.md) form.

## License
Copyright © 2019-present Eric Dobyns.