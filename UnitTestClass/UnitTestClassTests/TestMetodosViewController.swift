//
//  TestMetodosViewController.swift
//  UnitTestClassTests
//
//  Created by eduardo fulgencio on 03/01/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//

import XCTest
@testable import UnitTestClass

class TestMetodosViewController: XCTestCase {

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

}
