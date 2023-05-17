//
//  CalculatorViewModel.swift
//  calculator
//
//  Created by Фараби Иса on 16.05.2023.
//

import Foundation

protocol CalculatorViewModelType {
    var delegate: CalculatorViewModelDelegate? { get set }
    
    func appendNumber(_ number: String)
    func setOperator(_ operatorSymbol: String)
    func minus()
    func percent()
    func calculateResult()
    func clear()
}

protocol CalculatorViewModelDelegate: AnyObject {
    func updateDisplay(with text: String)
}

class CalculatorViewModel: CalculatorViewModelType {
    weak var delegate: CalculatorViewModelDelegate?
    
    private var currentNumber: String = ""
    private var storedNumber: String = ""
    private var currentOperator: String = ""
    
    func appendNumber(_ number: String) {
        currentNumber += number
        delegate?.updateDisplay(with: currentNumber)
    }
    
    func setOperator(_ operatorSymbol: String) {
        storedNumber = currentNumber
        currentNumber = ""
        currentOperator = operatorSymbol
    }
    
    func minus() {
        guard let number1 = Double(currentNumber) else {
            return
        }
        let negativeNumber = -number1
        
        if round(number1) == number1 {
            currentNumber = String(format: "%.0f", negativeNumber)
        } else {
            currentNumber = String(negativeNumber)
        }
        
        delegate?.updateDisplay(with: currentNumber)
    }
    
    func percent() {
        guard let number1 = Double(currentNumber) else {
            return
        }
        let percentedNumber = number1 / 100
        
        currentNumber = String(percentedNumber)
        delegate?.updateDisplay(with: currentNumber)
    }
    
    func calculateResult() {
        guard let number1 = Double(storedNumber),
              let number2 = Double(currentNumber) else {
            return
        }
        
        var result:Double
        
        switch currentOperator {
        case "+":
            result = number1 + number2
        case "-":
            result = number1 - number2
        case "×":
            result = number1 * number2
        case "÷":
            if number2 == 0 {
                delegate?.updateDisplay(with: "Error")
                return
            }
            result = number1 / number2
        default:
            return
        }
        
        if round(result) == result {
            currentNumber = String(format: "%.0f", result)
        } else {
            currentNumber = String(result)
        }
        
        delegate?.updateDisplay(with: currentNumber)
    }
    
    func clear() {
        currentNumber = ""
        storedNumber = ""
        currentOperator = ""
        delegate?.updateDisplay(with: currentNumber)
    }
}
