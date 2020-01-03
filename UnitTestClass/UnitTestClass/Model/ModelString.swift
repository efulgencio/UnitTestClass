//
//  ModelToTest.swift
//  UnitTestClass
//
//  Created by eduardo fulgencio on 03/01/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//

import Foundation

struct ModelString {
    
    var content: String = ""
    var actionToApply: Action?
    
    mutating func applyAction(letter: String, valueNew: String = "") {
        
        guard let actionToApply = actionToApply else { fatalError() }
        
        switch actionToApply {
            case .appendLetter:
                appendLetter(value: letter)
            case .removeLetter:
                removeLetter(value: letter)
            case .replaceLetter:
                replaceLetter(value: letter, valueNew: valueNew)
            case .countletter:
                countLetter(value: letter)
        }
    }
    
    mutating func appendLetter(value: String) {
        self.content += value
    }
    
    mutating func removeLetter(value: String) {
        let resultRemoved = self.content.replacingOccurrences(of: value, with: "")
        self.content = resultRemoved
    }
    
    mutating func replaceLetter(value: String, valueNew: String) {
        let resultRemoved = self.content.replacingOccurrences(of: value, with: valueNew)
        self.content = resultRemoved
    }
    
    mutating func countLetter(value: String) {
        var count = 0
        for element in self.content {
            if String(element) ==  value {
                count += 1
            }
        }
        self.content = String(count)
    }
    
    mutating func initEmptyValues() {
        content = ""
        actionToApply = nil
    }

}
