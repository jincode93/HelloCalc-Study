//
//  ViewController.swift
//  HelloCalc
//
//  Created by 진준호 on 2022/10/15.
//

import UIKit
import AVFoundation

// 순수하게 Interface Builder의 항목들과 직접 연결되는 일만 처리하겠다!
class ViewController: UIViewController {
    let synthesizer: AVSpeechSynthesizer = AVSpeechSynthesizer()

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func getNumbers() -> (Int, Int) {
            let firstText: String = firstTextField.text ?? "0"
            let firstNumber: Int = Int(firstText) ?? 0
            
            let secondText: String = secondTextField.text ?? "0"
            let secondNumber: Int = Int(secondText) ?? 0
            
            return (firstNumber, secondNumber)
        }
    
    func showResult(calc: Calculator) {
        resultLabel.text = calc.resultString
        speechResult(speechText: calc.speechString)
    }
    
    func speechResult(speechText: String) {
        let utterance: AVSpeechUtterance = AVSpeechUtterance(string: speechText)
        synthesizer.speak(utterance)
    }

    @IBAction func pressPlussButton(_ sender: Any) {
        let calculator = Calculator(first: getNumbers().0, second: getNumbers().1, operation: .plus)
        showResult(calc: calculator)
    }
    
    @IBAction func pressMinusButton(_ sender: Any) {
        let calculator = Calculator(first: getNumbers().0, second: getNumbers().1, operation: .minus)
        showResult(calc: calculator)
    }
    
    @IBAction func pressMultiplyButton(_ sender: Any) {
        let calculator = Calculator(first: getNumbers().0, second: getNumbers().1, operation: .multiply)
        showResult(calc: calculator)
    }
    
    @IBAction func pressDevideButton(_ sender: Any) {
        let calculator = Calculator(first: getNumbers().0, second: getNumbers().1, operation: .divide)
        showResult(calc: calculator)
    }
    
    @IBAction func pressSpuareButton(_ sender: Any) {
        let calculator = Calculator(first: getNumbers().0, second: getNumbers().1, operation: .square)
        showResult(calc: calculator)
    }
    
    @IBAction func pressRemainButton(_ sender: Any) {
        let calculator = Calculator(first: getNumbers().0, second: getNumbers().1, operation: .remain)
        showResult(calc: calculator)
    }
}

