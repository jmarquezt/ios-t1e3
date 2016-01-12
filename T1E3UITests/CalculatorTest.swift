//
//  CalculatorTest.swift
//  T1E3
//
//  Created by Jorge Marquez Torres on 12/1/16.
//  Copyright © 2016 jmarquez. All rights reserved.
//

import XCTest
import T1E3

class CalculatorTest: XCTestCase {
    
    var calc : Calculadora!
    override func setUp() {
        super.setUp()
        calc = Calculadora()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testAdd(){
        calc.operator1 = 5
        calc.operator2 = 5
        calc.operation = "+"
        XCTAssertEqual(calc.makeOperation(),10,"Error")
    }
    
    func testResta(){
        calc.operator1 = 3
        calc.operator2 = 1
        calc.operation = "-"
        XCTAssertEqual(calc.makeOperation(),2,"Error")
    }
    
    func testMultiplica(){
        calc.operator1 = 4
        calc.operator2 = 4
        calc.operation = "*"
        XCTAssertEqual(calc.makeOperation(),16,"Error")
    }
    
    func testDivide(){
        calc.operator1 = 4
        calc.operator2 = 4
        calc.operation = "/"
        XCTAssertEqual(calc.makeOperation(),1,"Error")
    }
    
    func testZeroDivide(){
        calc.operator1 = 5
        calc.operator2 = 0
        calc.operation = "/"
        XCTAssertEqual(calc.makeOperation(),0.0,"Division por cerrro!")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
