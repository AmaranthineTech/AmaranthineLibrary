//
//  AuthorCodeFile.swift
//
//
//  Created by Arun Patwardhan on 09/08/23.
//

import AmaranthineLibrary

var authorName  : String    = "Arun"
var authorEmail : String    = "arun@mail.com"
var authorDOB   : Date      = Date(timeIntervalSince1970: 123456789)
var authorPhone : String    = "9182736450"
var authorLink  : URL       = URL(string: "https://arunpatwardhan.com")

var arun        : Author    = Author(name: authorName,
                                     email: authorEmail,
                                     dateOfBirth: authorDOB,
                                     phone: authorPhone,
                                     photo: nil,
                                     website: authorLink)
