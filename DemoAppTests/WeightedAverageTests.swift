//
//  WeightedAverageTests.swift
//  DemoAppTests
//
//  Created by Lucas Paim on 17/08/22.
//

import Foundation
import XCTest

/*
 Fórmula: soma da multiplicação das notas pelos seus respectivos pesos divido pela soma dos pesos
 */

func weightedAverage(note1: Int, note2: Int, weight1: Int, weight2: Int) -> Int {
    fatalError()
}

class WeightedAverageTests: XCTestCase {

    func test_weightAverage_shouldReturnCorrectAvg() {
        XCTAssertEqual(weightedAverage(note1: 5, note2: 10, weight1: 2, weight2: 3), 8)
        XCTAssertEqual(weightedAverage(note1: 5, note2: 10, weight1: 1, weight2: 5), 9)
    }
    
}
