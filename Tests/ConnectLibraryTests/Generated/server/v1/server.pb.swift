// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: server/v1/server.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2022-2023 The Connect Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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

enum Server_V1_Protocol: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unspecified // = 0
  case grpc // = 1
  case grpcWeb // = 2
  case UNRECOGNIZED(Int)

  init() {
    self = .unspecified
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .grpc
    case 2: self = .grpcWeb
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .grpc: return 1
    case .grpcWeb: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Server_V1_Protocol: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static let allCases: [Server_V1_Protocol] = [
    .unspecified,
    .grpc,
    .grpcWeb,
  ]
}

#endif  // swift(>=4.2)

/// ServerMetadata is the metadata returned from the server started by the server binary.
struct Server_V1_ServerMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var host: String = String()

  var protocols: [Server_V1_ProtocolSupport] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Server_V1_ProtocolSupport {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var `protocol`: Server_V1_Protocol = .unspecified

  var httpVersions: [Server_V1_HTTPVersion] = []

  var port: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Server_V1_HTTPVersion {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var major: Int32 = 0

  var minor: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Server_V1_Protocol: @unchecked Sendable {}
extension Server_V1_ServerMetadata: @unchecked Sendable {}
extension Server_V1_ProtocolSupport: @unchecked Sendable {}
extension Server_V1_HTTPVersion: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "server.v1"

extension Server_V1_Protocol: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PROTOCOL_UNSPECIFIED"),
    1: .same(proto: "PROTOCOL_GRPC"),
    2: .same(proto: "PROTOCOL_GRPC_WEB"),
  ]
}

extension Server_V1_ServerMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ServerMetadata"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "host"),
    2: .same(proto: "protocols"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.host) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.protocols) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.host.isEmpty {
      try visitor.visitSingularStringField(value: self.host, fieldNumber: 1)
    }
    if !self.protocols.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.protocols, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Server_V1_ServerMetadata, rhs: Server_V1_ServerMetadata) -> Bool {
    if lhs.host != rhs.host {return false}
    if lhs.protocols != rhs.protocols {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Server_V1_ProtocolSupport: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ProtocolSupport"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "protocol"),
    2: .standard(proto: "http_versions"),
    3: .same(proto: "port"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.`protocol`) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.httpVersions) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.port) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.`protocol` != .unspecified {
      try visitor.visitSingularEnumField(value: self.`protocol`, fieldNumber: 1)
    }
    if !self.httpVersions.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.httpVersions, fieldNumber: 2)
    }
    if !self.port.isEmpty {
      try visitor.visitSingularStringField(value: self.port, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Server_V1_ProtocolSupport, rhs: Server_V1_ProtocolSupport) -> Bool {
    if lhs.`protocol` != rhs.`protocol` {return false}
    if lhs.httpVersions != rhs.httpVersions {return false}
    if lhs.port != rhs.port {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Server_V1_HTTPVersion: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".HTTPVersion"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "major"),
    2: .same(proto: "minor"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.major) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.minor) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.major != 0 {
      try visitor.visitSingularInt32Field(value: self.major, fieldNumber: 1)
    }
    if self.minor != 0 {
      try visitor.visitSingularInt32Field(value: self.minor, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Server_V1_HTTPVersion, rhs: Server_V1_HTTPVersion) -> Bool {
    if lhs.major != rhs.major {return false}
    if lhs.minor != rhs.minor {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
