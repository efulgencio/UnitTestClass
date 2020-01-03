# UnitTestClass

Unit Testing


'''

    func testAppendLetterToModelString() {
        var modelString = ModelString(content: "palabra", actionToApply: .appendLetter)
        modelString.actionToApply = .appendLetter
        modelString.applyAction(letter: "s")
        XCTAssertEqual(modelString.content, "palabras")
    }

'''

Measure

UI Testing
