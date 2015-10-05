//
//  ViewController.swift
//  Fanagram
//
//  Created by Joel Nieman on 10/1/15.
//  Copyright © 2015 JoelNieman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var correctWordsDisplay: UITextView!
    @IBOutlet weak var endGameDisplay: UITextView!
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var currentAnagram: UILabel!
    @IBOutlet weak var submitWordButton: UIButton!
    
    var abstArray = ["tabs", "stab", "bats", ""]
    var score = 0
    var attempts = 0
    var correctWordsArray = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startGame() }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning() }

    @IBAction func newGame(sender: UIButton) {
        startGame()
        submitWordButton.hidden = false
        endGameDisplay.text = "" }
    
    func endGame() {
        submitWordButton.hidden = true
        endGameDisplay.text = "Great job! You solved this anagram!" }
    func startGame() {
        currentAnagram.text = "abst" }
    
    @IBAction func submitWord(sender: UIButton) {
        let word = userInput.text
        var answersRemain = abstArray.count
        for var index = 0; index < (abstArray.count-1); index++ {
            if word == abstArray[index] {
                abstArray.removeAtIndex(index)
                answersRemain--
                print(abstArray)
                score++
                userInput.text = ""
                correctWordsArray += ["\(word)"]
                correctWordsDisplay.text! += "\(word!)"
                print(correctWordsArray)
            
            } else {
                userInput.text = "" }
                endGameDisplay.textColor = UIColor.redColor()
                endGameDisplay.text = "\(word!) is incorrect"
//            if word != abstArray[index] {

            }
        
//            if answersRemain == 1 {
//                endGame() }
//            print(answersRemain)
    }
}
