// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Transaction.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

/// Transaction

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum Crypto: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case secp // = 0
  case sm2 // = 1
  case UNRECOGNIZED(Int)

  init() {
    self = .secp
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .secp
    case 1: self = .sm2
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .secp: return 0
    case .sm2: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

struct Transaction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var to: String = String()

  var nonce: String = String()

  /// gas
  var quota: UInt64 = 0

  var validUntilBlock: UInt64 = 0

  var data: Data = SwiftProtobuf.Internal.emptyData

  var value: Data = SwiftProtobuf.Internal.emptyData

  var chainID: UInt32 = 0

  var version: UInt32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct UnverifiedTransaction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var transaction: Transaction {
    get {return _storage._transaction ?? Transaction()}
    set {_uniqueStorage()._transaction = newValue}
  }
  /// Returns true if `transaction` has been explicitly set.
  var hasTransaction: Bool {return _storage._transaction != nil}
  /// Clears the value of `transaction`. Subsequent reads from it will return its default value.
  mutating func clearTransaction() {_storage._transaction = nil}

  var signature: Data {
    get {return _storage._signature}
    set {_uniqueStorage()._signature = newValue}
  }

  var crypto: Crypto {
    get {return _storage._crypto}
    set {_uniqueStorage()._crypto = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Crypto: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SECP"),
    1: .same(proto: "SM2"),
  ]
}

extension Transaction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Transaction"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "to"),
    2: .same(proto: "nonce"),
    3: .same(proto: "quota"),
    4: .standard(proto: "valid_until_block"),
    5: .same(proto: "data"),
    6: .same(proto: "value"),
    7: .standard(proto: "chain_id"),
    8: .same(proto: "version"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.to)
      case 2: try decoder.decodeSingularStringField(value: &self.nonce)
      case 3: try decoder.decodeSingularUInt64Field(value: &self.quota)
      case 4: try decoder.decodeSingularUInt64Field(value: &self.validUntilBlock)
      case 5: try decoder.decodeSingularBytesField(value: &self.data)
      case 6: try decoder.decodeSingularBytesField(value: &self.value)
      case 7: try decoder.decodeSingularUInt32Field(value: &self.chainID)
      case 8: try decoder.decodeSingularUInt32Field(value: &self.version)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.to.isEmpty {
      try visitor.visitSingularStringField(value: self.to, fieldNumber: 1)
    }
    if !self.nonce.isEmpty {
      try visitor.visitSingularStringField(value: self.nonce, fieldNumber: 2)
    }
    if self.quota != 0 {
      try visitor.visitSingularUInt64Field(value: self.quota, fieldNumber: 3)
    }
    if self.validUntilBlock != 0 {
      try visitor.visitSingularUInt64Field(value: self.validUntilBlock, fieldNumber: 4)
    }
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 5)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularBytesField(value: self.value, fieldNumber: 6)
    }
    if self.chainID != 0 {
      try visitor.visitSingularUInt32Field(value: self.chainID, fieldNumber: 7)
    }
    if self.version != 0 {
      try visitor.visitSingularUInt32Field(value: self.version, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Transaction) -> Bool {
    if self.to != other.to {return false}
    if self.nonce != other.nonce {return false}
    if self.quota != other.quota {return false}
    if self.validUntilBlock != other.validUntilBlock {return false}
    if self.data != other.data {return false}
    if self.value != other.value {return false}
    if self.chainID != other.chainID {return false}
    if self.version != other.version {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension UnverifiedTransaction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "UnverifiedTransaction"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "transaction"),
    2: .same(proto: "signature"),
    3: .same(proto: "crypto"),
  ]

  fileprivate class _StorageClass {
    var _transaction: Transaction? = nil
    var _signature: Data = SwiftProtobuf.Internal.emptyData
    var _crypto: Crypto = .secp

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _transaction = source._transaction
      _signature = source._signature
      _crypto = source._crypto
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._transaction)
        case 2: try decoder.decodeSingularBytesField(value: &_storage._signature)
        case 3: try decoder.decodeSingularEnumField(value: &_storage._crypto)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._transaction {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._signature.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._signature, fieldNumber: 2)
      }
      if _storage._crypto != .secp {
        try visitor.visitSingularEnumField(value: _storage._crypto, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: UnverifiedTransaction) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._transaction != other_storage._transaction {return false}
        if _storage._signature != other_storage._signature {return false}
        if _storage._crypto != other_storage._crypto {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
