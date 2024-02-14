//
//  File.swift
//  
//
//  Created by Arun Patwardhan on 04/07/23.
//

import Foundation

/**
 The genre of the book. Possible values
 `thriller`
 
 `comedy`
 
 `horror`
 
 `mystery`
 
 `romance`
 
 `educational`
 
 `informational`
 
 
 
 **Protocols**
 
 Conforms to `CustomStringConvertible` protocol
 
 - version: 1.0
 - note: Does not have any underlying type
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
public enum Genre {
    case thriller
    case comedy
    case horror
    case mystery
    case romance
    case educational
    case informational
}

@available(swift 5.0)
@available(iOS 14, macOS 12, *)
extension Genre : CustomStringConvertible {
    public var description: String {
        switch self {
        case .comedy:
            return "Comedy"
        case .educational:
            return "Educational"
        case .horror:
            return "Horror"
        case .informational:
            return "Informative"
        case .mystery:
            return "Mystery"
        case .romance:
            return "Romance"
        case .thriller:
            return "Thriller"
        }
    }
}

@available(swift 5.0)
@available(iOS 14, macOS 12, *)
extension Genre {
    @available(swift 5.0)
    @available(iOS 14, macOS 12, *)
    mutating func fromString(_ input : String) {
        let source : String = input.lowercased()
        
        switch source {
        case "comedy":
            self = .comedy
        case "educational":
            self = .educational
        case "horror":
            self = .horror
        case "informative":
            self = .informational
        case "romance":
            self = .romance
        case "mystery":
            self = .mystery
        case "thriller":
            self = .thriller
        default:
            self = .comedy
        }
    }
}
