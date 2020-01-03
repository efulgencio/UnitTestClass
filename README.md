# UnitTestClass

Ejemplo para testear una clase, como indicar que realice el measure y UI testing.

Unit Testing




    func testAppendLetterToModelString() {
        var modelString = ModelString(content: "palabra", actionToApply: .appendLetter)
        modelString.actionToApply = .appendLetter
        modelString.applyAction(letter: "s")
        XCTAssertEqual(modelString.content, "palabras")
    }



Measure

    func testConsumProcess() {
        measure {
            modelString.content = "abracadabra"
            modelString.actionToApply = .countletter
            modelString.applyAction(letter: "a")
            XCTAssertEqual(modelString.content, "5")
        }
    }
    
    

UI Testing


 var vc : ViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vc = storyboard.instantiateViewController(identifier: "viewControllerID") as ViewController
        vc.loadViewIfNeeded()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testBtnApplyAction() {
        vc.txtfPalabra.text = "palabra"
        vc.txtfLetra.text = "s"
        vc.btnAccion.sendActions(for: .touchUpInside)
        XCTAssertEqual(vc.txtfPalabra.text, "palabras")
    }


