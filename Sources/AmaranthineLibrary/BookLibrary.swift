import Foundation

@available(swift 5.0)
@available(iOS 14, macOS 12, *)
public enum SearchResult {
    case found
    case notfound
}

@available(swift 5.0)
@available(iOS 14, macOS 12, *)
extension SearchResult : CustomStringConvertible {
    public var description: String {
        switch self {
        case .found:
            return "Found"
        case .notfound:
            return "Not found"
        }
    }
}

@available(swift 5.0)
@available(iOS 14, macOS 12, *)
public enum LibraryExceptions : Error {
    case libraryEmpty
    case bookInformationIncomplete(String)
}

@available(swift 5.0)
@available(iOS 14, macOS 12, *)
extension LibraryExceptions : CustomStringConvertible {
    public var description: String {
        switch self {
        case .libraryEmpty:
            return "There are no books in the library"
        case .bookInformationIncomplete(let err):
            return "The book provided does not contain the necessary information: \(err)"
        }
    }
}
/**
 Holds a collection of books.
 
 - version: 1.0
 - note: Books are held in the form of an array.
 - important: There is no safety check performed to see if there are books in the library.
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
public struct Library {
    private var books : [Book] = []
    
    /**
            Used to get a book from the libary.
     
     - version: 1.0
     - warning: Does not perform safety check
     - returns: `Book`
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
    public mutating func checkoutBook() throws -> Book {
        guard self.books.count > 0
        else {
            throw LibraryExceptions.libraryEmpty
        }
        
        return self.books.removeFirst()
    }
    
    /**
            Used to add a perviously  checked out book.
     
     - version: 1.0
     - warning: Does not perform safety check
     - parameter book: The `Book` to be added to the library
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
    public mutating func receiveBook(book : Book) {
        self.books.append(book)
    }
    
    /**
            Used to add a newly acquired book.
     
     - version: 1.0
     - warning: Does not perform safety check
     - parameter newBook: The `Book` to be added to the library
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
    public mutating func acquireBook(newBook : Book) {
        self.books.append(newBook)
    }
    
    /**
            Get a list of books written by a specific author.
     
     - version: 1.0
     - warning: Does not perform safety check
     - parameter author: The `Author` whose books are needed
     - returns: `[Book]` array of books.
     - important: Will return an empty array if no books are found.
     - note: This will perform an equality check on the `Author` to find the matching author.
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
    public func booksByAuthor(author : Author) throws -> [Book] {
        guard self.books.count > 0
        else {
            throw LibraryExceptions.libraryEmpty
        }
        
        var list : [Book] = []
        for item in books {
            if item.author == author {
                list.append(item)
            }
        }
        return list
    }
    
    @available(swift 5.0)
    @available(iOS 14, macOS 12, *)
    public func locate(Book searchBook : Book) throws -> SearchResult {
        guard self.books.count > 0
        else {
            throw LibraryExceptions.libraryEmpty
        }
        
        guard !searchBook.isbn.isEmpty
        else {
            throw LibraryExceptions.bookInformationIncomplete("Make sure the ISBN number is there.")
        }
        
        guard self.books.first(where: {(book : Book) -> Bool in
            book == searchBook
        }) != nil
        else {
            return SearchResult.notfound
        }
        return SearchResult.found
    }
}
