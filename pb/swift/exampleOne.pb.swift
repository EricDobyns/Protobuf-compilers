// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: exampleOne.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2020 Eric Dobyns

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct ExampleOne_SomeMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var foo: String = String()

  var bar: ExampleTwo_SomeOtherMessage {
    get {return _bar ?? ExampleTwo_SomeOtherMessage()}
    set {_bar = newValue}
  }
  /// Returns true if `bar` has been explicitly set.
  var hasBar: Bool {return self._bar != nil}
  /// Clears the value of `bar`. Subsequent reads from it will return its default value.
  mutating func clearBar() {self._bar = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _bar: ExampleTwo_SomeOtherMessage? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "ExampleOne"

extension ExampleOne_SomeMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SomeMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "foo"),
    2: .same(proto: "bar"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.foo)
      case 2: try decoder.decodeSingularMessageField(value: &self._bar)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.foo.isEmpty {
      try visitor.visitSingularStringField(value: self.foo, fieldNumber: 1)
    }
    if let v = self._bar {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: ExampleOne_SomeMessage, rhs: ExampleOne_SomeMessage) -> Bool {
    if lhs.foo != rhs.foo {return false}
    if lhs._bar != rhs._bar {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
