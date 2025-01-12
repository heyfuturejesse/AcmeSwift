import Foundation
import JWTKit

/// Account information returned when calling `get()` or `create()`.
public struct AcmeAccountInfo: Codable, Sendable {
    
    /// URL containing the ID of the Account.
    ///
    /// - Note: This URL is used to perform some account management operations.
    internal(set) public var url: URL?
    
    /// Information about the Account public key in JWK format.
    public let key: JWK
    
    /// The PEM representation of the private key for this Account.
    internal(set) public var privateKeyPem: String?
    
    /// The contact entries.
    public let contact: [String]
    
    /// Date when the Account was created.
    public let createdAt: String
    
    /// Current status of the Account.
    public let status: Status
    
    /// URL to the pending orders for this account.
    /// - Note: No provider seems to have this fully implemented.
    public let orders: URL?
    
    public enum Status: String, Codable, Sendable {
        case valid, deactivated, revoked
    }
}
