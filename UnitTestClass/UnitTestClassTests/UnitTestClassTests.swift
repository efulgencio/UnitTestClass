//
//  UnitTestClassTests.swift
//  UnitTestClassTests
//
//  Created by eduardo fulgencio on 03/01/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//

import XCTest
@testable import UnitTestClass

class UnitTestClassTests: XCTestCase {

    var modelString: ModelString!
    
    override func setUp() {
        super.setUp()
        modelString = ModelString()
    }

    override func tearDown() {
        modelString = nil
        super.tearDown()
    }

    func testAppendLetterToModelString() {
        var modelString = ModelString(content: "palabra", actionToApply: .appendLetter)
        modelString.actionToApply = .appendLetter
        modelString.applyAction(letter: "s")
        XCTAssertEqual(modelString.content, "palabras")
    }
    
    func testRemoveLetterToModelString() {
        var modelString = ModelString(content: "palabras", actionToApply: .appendLetter)
        modelString.actionToApply = .removeLetter
        modelString.applyAction(letter: "s")
        XCTAssertEqual(modelString.content, "palabra")
    }
    
    func testReplaceLetterToModelString() {
        var modelString = ModelString(content: "palabra", actionToApply: .appendLetter)
        modelString.actionToApply = .replaceLetter
        modelString.applyAction(letter: "ra", valueNew: "ras")
        XCTAssertEqual(modelString.content, "palabras")
    }
    
}
