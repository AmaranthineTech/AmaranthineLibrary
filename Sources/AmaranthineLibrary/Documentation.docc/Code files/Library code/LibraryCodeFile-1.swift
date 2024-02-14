//
//  LibraryCodeFile.swift
//
//
//  Created by Arun Patwardhan on 09/08/23.
//

let authorName      : String    = "Arun"
let authorEmail     : String    = "arun@mail.com"
let authorDOB       : Date      = Date(timeIntervalSince1970: 123456789)
let authorPhone     : String    = "9182736450"
let authorLink      : URL       = URL(string: "https://arunpatwardhan.com")

let arun            : Author    = Author(name: authorName,
                                     email: authorEmail,
                                     dateOfBirth: authorDOB,
                                     phone: authorPhone,
                                     photo: nil,
                                     website: authorLink)

let bookGenre       : Genre     = Genre.educational

let bookStyle       : BookStyle = BookStyle.paperback

let bookTitle       : String    = "Introduction to Swift"
let bookISBN        : String    = "34243-3433-2"
let pageCount       : Int       = 987
let publicationDate : Date      = Date(timeIntervalSince1970: 9876543210)

let swiftTextBook   : Book      = Book(title: bookTitle,
                                       author: arun,
                                       publishedOn: publicationDate,
                                       isbn: bookISBN,
                                       pageCount: pageCount,
                                       genre: bookGenre,
                                       format: bookStyle)

let xcodeTextbook   : Book      = Book(title: "Introduction to Xcode",
                                       author: arun,
                                       publishedOn: Date(timeIntervalSince1970: 48379343879),
                                       isbn: "34-43242-43",
                                       pageCount: 179,
                                       genre: Genre.educational,
                                       format: BookStyle.ebook)

let doccTextBook    : Book      = Book(title: "Introduction to DocC",
                                       author: Author(name: "Harsh",
                                                      email: "harsh@mail.com",
                                                      dateOfBirth: Date(timeIntervalSince1970: 3893439053),
                                                      phone: "4545354",
                                                      photo: nil,
                                                      website: URL(string: "https://amaranthine.in")),
                                       publishedOn: Date(timeIntervalSince1970: 9893439053),
                                       isbn: "345-43553-56",
                                       pageCount: 98,
                                       genre: Genre.educational,
                                       format: BookStyle.paperback)

let library         : Library   = Library(books: [swiftTextBook, xcodeTextbook, doccTextBook])
