//
//  File.swift
//  
//
//  Created by Arun Patwardhan on 04/07/23.
//

import Foundation

@available(swift 5.0)
@available(iOS 14, macOS 12, *)
public enum BookStyle {
    case hardbound
    case paperback
    case ebook
    case webpage
}

@available(swift 5.0)
@available(iOS 14, macOS 12, *)
extension BookStyle : CustomStringConvertible {
    public var description: String {
        switch self {
        case .ebook:
            return "E-book"
        case .hardbound:
            return "Hardbound"
        case .paperback:
            return "Paperback"
        case .webpage:
            return "Web page"
        }
    }
}

@available(swift 5.0)
@available(iOS 14, macOS 12, *)
extension BookStyle {
    @available(swift 5.0)
    @available(iOS 14, macOS 12, *)
    mutating func fromString(_ style : String) {
        let sourceStyle : String = style.lowercased()
        
        switch sourceStyle {
        case "e-book":
            self = .ebook
        case "hardbound":
            self = .hardbound
        case "paperback":
            self = .paperback
        case "webpage":
            self = .webpage
        default:
            self = .paperback
        }
    }
}

/**
 Represents the book.
 
 **Protocols**
 
 Conforms to `CustomStringConvertible` protocol
 
 - version: 1.0
 - note: All properties are necessary.
 - since: iOS 14, macOS 12
 - author: Arun Patwardhan
 - copyright: Amaranthine (c) 2023
 - date: 3rd July 2023
 - requires: Swift 5.x
 - Tip: See the article on creating markup comments [Adding formatted Text to Swift](https://arunpatwardhan.com/2017/11/09/adding-formatted-text-to-swift-in-xcode/)
 
 [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
 */
@available(swift 5.0)
@available(iOS 14, macOS 12, *)
public struct Book {
    public let title        : String
    public let author       : Author
    public let publishedOn  : Date
    public let isbn         : String
    public let pageCount    : Int
    public let genre        : Genre
    public let format       : BookStyle
}

@available(swift 5.0)
@available(iOS 14, macOS 12, *)
extension Book : CustomStringConvertible {
    public var description: String {
        let df : DateFormatter  = DateFormatter()
        df.dateStyle            = .medium
        df.timeStyle            = .medium
        
        return """
        ---------
        BOOK
        ---------
        Title:      \(self.title)
        Published:  \(df.string(from: self.publishedOn))
        ISBN:       \(self.isbn)
        Page count: \(self.pageCount)
        Genre:      \(self.genre)
        Author:     \(self.author)
        Format:     \(self.format)
        """
    }
}

@available(swift 5.0)
@available(iOS 14, macOS 12, *)
extension Book : Equatable {
    public static func == (lhs : Book, rhs : Book) -> Bool {
        lhs.isbn == rhs.isbn
    }
    
    public static func != (lhs : Book, rhs : Book) -> Bool {
        lhs.isbn != rhs.isbn
    }
}
