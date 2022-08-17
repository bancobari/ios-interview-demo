//
//  WindowSumProblemTests.swift
//  DemoAppTests
//
//  Created by Lucas Paim on 17/08/22.
//

import Foundation
import XCTest


class WindowSum {
    private var windowSize: UInt
    
    init(windowSize: UInt) {
        self.windowSize = windowSize
    }
    
    func sum(_ value: Int) -> Int {
        fatalError()
    }
}

// Examples:
/*
 window = 3:
 sum(1) = 1
 sum(2) = 3
 sum(2) = 5
 sum(5) = 9
 ----------------
 window = 2
 sum(1) = 1
 sum(3) = 4
 sum(2) = 5
 */

class WindowSumTests: XCTestCase {

    func test_window_withSizeThree_shouldReturn_correctValues() {
        let sut = WindowSum(windowSize: 3)
        XCTAssertEqual(sut.sum(1), 1)
        XCTAssertEqual(sut.sum(2), 3)
        XCTAssertEqual(sut.sum(2), 5)
        XCTAssertEqual(sut.sum(5), 9)
    }
    
    func test_window_withSizeTwo_shouldReturn_correctValues() {
        let sut = WindowSum(windowSize: 2)
        XCTAssertEqual(sut.sum(1), 1)
        XCTAssertEqual(sut.sum(3), 4)
        XCTAssertEqual(sut.sum(2), 5)
    }

}
