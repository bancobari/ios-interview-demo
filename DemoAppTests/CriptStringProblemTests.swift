//
//  CriptStringProblemTests.swift
//  DemoAppTests
//
//  Created by Lucas Paim on 17/08/22.
//

import Foundation
import XCTest

func encryptString(_ string: String, jumpSize: UInt) -> String {
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
    fatalError()
}

class EncriptStringTests: XCTestCase {

    func test_encriptString_shouldReturnCorrectJump() {
        XCTAssertEqual(encryptString("az", jumpSize: 1), "ba")
        XCTAssertEqual(encryptString("gato", jumpSize: 2), "icvq")
        XCTAssertEqual(encryptString("escola", jumpSize: 3), "hvfrod")
    }
    
}
