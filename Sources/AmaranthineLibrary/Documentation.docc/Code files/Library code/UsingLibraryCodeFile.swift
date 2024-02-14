//
//  UsingLibraryCodeFile.swift
//  
//
//  Created by Arun Patwardhan on 09/08/23.
//

import AmaranthineLibrary

var library         : Library   = Library(books: [swiftTextBook, xcodeTextbook, doccTextBook])

//to add a newly purchased book
library.acquireBook(newBook: Book(title: "Introduction to Objective-C",
                                  author: arun,
                                  publishedOn: Date(timeIntervalSince1970: 89787324324),
                                  isbn: "983-34234-2",
                                  pageCount: 293,
                                  genre: Genre.educational,
                                  format: BookStyle.hardbound))
