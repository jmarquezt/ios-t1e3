//
//  Calculadora.swift
//  T1E3
//
//  Created by Jorge Marquez Torres on 12/1/16.
//  Copyright © 2016 jmarquez. All rights reserved.
//

import UIKit
public class Calculadora: NSObject {
    public var operation = "@"
    public var operator1 = 0.0
    public var operator2 = 0.0
    public func makeOperation() -> Double{
        var result = 0.0
        switch(operation){
        case "+":
            result = self.add()
        case "-":
            result = self.substract()
        case "*":
            result = self.multiply()
        case "/":
            result = self.divide()
        default:
            break
        }
        return result
    }
    public func add() -> Double {
        return operator1 + operator2
    }
    public func substract() -> Double {
        return operator1 - operator2
        
    }
    public func multiply() -> Double {
        return operator1 * operator2
        
    }
    public func divide() -> Double {
        if(operator2 == 0){
            return 0.0
        }
        return operator1 / operator2
    }
}