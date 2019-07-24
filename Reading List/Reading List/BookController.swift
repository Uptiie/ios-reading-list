//
//  BookController.swift
//  Reading List
//
//  Created by Uptiie on 7/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class BookController {
    var books = [Book]()
}

// MARK URL

func saveToPersistentStore() {
    guard let url = persistentFileURL else { return }
    
    do {
        let encoder = PropertyListEncoder()
        let data = try encoder.encode(books)
        try data.write(to: url)
    } catch {
        NSLog(
}
