//
//  BookCodeFile.swift
//
//  BookCodeFile.swift
//
//
//  Created by Arun Patwardhan on 09/08/23.
//

import AmaranthineLibrary

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
