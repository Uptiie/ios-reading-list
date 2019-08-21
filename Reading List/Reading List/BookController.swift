//
//  BookController.swift
//  Reading List
//
//  Created by Uptiie on 7/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class BookController {
    // MARK: - Properties
    
    private(set) var books = [Book]()
    
    init() {
        loadFromPersistentStore()
    }
    
    @discardableResult func createStar(withTitle title: String, reasonToRead: String, hasBeenRead: Bool) -> Book {
        let book = Book(title: title, reasonToRead: reasonToRead, hasBeenRead: hasBeenRead)
        books.append(book)
        saveToPersistentStore()
        return book
    }
    
    func listBooks() -> String {
        var output = ""
        for book in books {
            output +=
        }
        return output
    }
}
    // MARK: - Persistence

private func saveToPersistentStore() {
    guard let url = persistentFileURL else { return }
    
    do {
        let encoder = PropertyListEncoder()
        let data = try encoder.encode(Book)
        try data.write(to: url)
    } catch {
        NSLog("Error saving books data: \(error)")
    }
}

private func loadFromPersistentStore() {
    let fm = FileManager.default
    guard let url = persistentFileURL, fm.fileExists(atPath: url.path) else { return }
    
    do {
        let data = try Data(contentsOf: url)
        let decoder = PropertyListDecoder()
        Book = try decoder.decode([Book].self, from: data)
    } catch {
        NSLog("Error loading stars data: \(error)")
        
    }
}

private var persistentFileURL: URL? {
    let fm = FileManager.default
    guard let dir = fm.urls(for: .documentDirectory, in: .userDomainMask)
}
