//
//  DemoAppTests.swift
//  DemoAppTests
//
//  Created by Lucas Paim on 17/08/22.
//

import XCTest
@testable import DemoApp

class DemoAppTests: XCTestCase {

    func test_book_with_memoryLeak() {
        let author: Author = Author(name: "Some Author")
        let book: Book = Book(title: "teste", author: author, url: anyURL())
        author.add(book)
        detectMemoryLeak(author)
    }

}

extension DemoAppTests {
    func anyURL() -> URL { URL(string: "https://google.com.br")! }
}

extension XCTestCase {
    func detectMemoryLeak(
        _ instance: AnyObject,
        file: StaticString = #file,
        line: UInt = #line
    ) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(
                instance,
                "Instance should have been desalocated. Potential Memory Leak",
                file: file,
                line: line
            )
        }
    }
}
