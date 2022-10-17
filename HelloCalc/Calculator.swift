//
//  Calculator.swift
//  HelloCalc
//
//  Created by 진준호 on 2022/10/15.
//

import Foundation

struct Calculator {
    // 밖에서 정의할 내용
    var firstNumber: Int = 0
    var secondNumber: Int = 0
    var operation: CalcOperation = .plus
    
    // 나중에 계산/연산 프로퍼티로 만들어줄 내용
    var result: Int {
        get {
            switch operation {
            case .plus:
                return firstNumber + secondNumber
            case .minus:
                return firstNumber - secondNumber
            case .multiply:
                return firstNumber * secondNumber
            case .divide:
                if secondNumber == 0 {
                    return 0
                } else {
                    return firstNumber / secondNumber
                }
            case .square:
                var temp: Int = 1
                for _ in 1...secondNumber {
                    temp = temp * firstNumber
                }
                return temp
            case .remain:
                return firstNumber % secondNumber
            }
        }
    }
    
    var resultString: String {
        get {
            switch operation {
            case .plus:
                return "\(firstNumber) + \(secondNumber)의 결과는 \(result)입니다."
            case .minus:
                return "\(firstNumber) - \(secondNumber)의 결과는 \(result)입니다."
            case .multiply:
                return "\(firstNumber) * \(secondNumber)의 결과는 \(result)입니다."
            case .divide:
                return "\(firstNumber) / \(secondNumber)의 결과는 \(result)입니다."
            case .square:
                return "\(firstNumber) 의 \(secondNumber)승의 결과는 \(result)입니다"
            case .remain:
                return "\(firstNumber) / \(secondNumber)의 나머지는 \(result)입니다."
            }
        }
    }
    
    var speechString: String {
        get {
            switch operation {
            case .plus:
                return "\(firstNumber) + \(secondNumber)의 결과는 \(result)입니다."
            case .minus:
                return "\(firstNumber) - \(secondNumber)의 결과는 \(result)입니다."
            case .multiply:
                return "\(firstNumber) * \(secondNumber)의 결과는 \(result)입니다."
            case .divide:
                return "\(firstNumber) / \(secondNumber)의 결과는 \(result)입니다."
            case .square:
                return "\(firstNumber) 의 \(secondNumber)승의 결과는 \(result)입니다"
            case .remain:
                return "\(firstNumber) / \(secondNumber)의 나머지는 \(result)입니다."
            }
        }
    }
    
    init(first: Int, second: Int, operation: CalcOperation) {
        self.firstNumber = first
        self.secondNumber = second
        self.operation = operation
    }
}
