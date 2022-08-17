//
//  Book.swift
//  DemoApp
//
//  Created by Lucas Paim on 17/08/22.
//

import Foundation

final class Book {
    let title: String
    let author: Author
    let url: URL
    init(title: String, author: Author, url: URL) {
        self.title = title
        self.author = author
        self.url = url
    }
}

final class Author {
    let name: String
    var books = [Book]()
    
    init(name: String) {
        self.name = name
    }
    
    func add(_ book: Book) {
        books.append(book)
    }
}


final class DataStore {
    static let allBooksData: [Book] = {
        return (0..<100).map { index -> Book in
            let randomId = String(Int.random(in: 0...1000))
            let author = Author(name: "Author \(index)")
            return Book(title: "Book - \(index)", author: author, url: URL(string: "https://picsum.photos/id/\(randomId)/400")!)
        }
    }()

}
