//
//  File.swift
//  
//
//  Created by Arun Patwardhan on 04/07/23.
//

import Foundation

/**
 Represents the author of the book.
 
 **Protocols**
 
 Conforms to `CustomStringConvertible` and `Equatable`
 
 - version: 1.0
 - note: The `name` and `dateOfBirth` are deemed to be unique properties.
 - since: iOS 14, macOS 11
 - author: Arun Patwardhan
 - copyright: Amaranthine (c) 2023
 - date: 3rd July 2023
 - requires: Swift 5.x
 - Tip: See the article on creating markup comments [Adding formatted Text to Swift](https://arunpatwardhan.com/2017/11/09/adding-formatted-text-to-swift-in-xcode/)
 
 [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
 */
@available(swift 5.0)
@available(iOS 14, macOS 12, *)
public struct Author {
    public var name         : String    = ""
    public var email        : String    = ""
    public var dateOfBirth  : Date      = Date.now
    public var phone        : String    = ""
    public var photo        : Data?
    public var website      : URL?
}

@available(swift 5.0)
@available(iOS 14, macOS 12, *)
extension Author : CustomStringConvertible {
    public var description: String {
        let df : DateFormatter  = DateFormatter()
        df.dateStyle            = .medium
        df.timeStyle            = .medium
        
        return """
        Author
        ----------
        Name:       \(self.name)
        Email:      \(self.email)
        Birthday:   \(df.string(from: self.dateOfBirth))
        Phone:      \(self.phone)
        Website:    \(self.website?.description ?? "")
        """
    }
}

@available(swift 5.0)
@available(iOS 14, macOS 12, *)
extension Author : Equatable {
    public static func ==(lhs : Author, rhs : Author) -> Bool {
        lhs.name == rhs.name && lhs.dateOfBirth == rhs.dateOfBirth
    }
}
