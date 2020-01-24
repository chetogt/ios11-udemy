//
//  ViewController.swift
//  TicTacToe
//
//  Created by Jose Cordova on 1/14/20.
//  Copyright © 2020 Plicod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var winner: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    var activeGame = true
    // 1 is noughts, 2 is crosses
    var activePlayer = 1
    // 0 is empty space
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var winningCombinations = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6]
    ]
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        initGame()
    }
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        let activePosition = sender.tag - 1
        if gameState[activePosition] == 0 && activeGame {
            gameState[activePosition] = activePlayer
            let currentPlayer = activePlayer
            if activePlayer == 1 {
                sender.setImage(UIImage(named: "nought.png"), for: [])
                activePlayer = 2
            } else {
                sender.setImage(UIImage(named: "cross.png"), for: [])
                activePlayer = 1
            }
            for combination in winningCombinations {
                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                    
                    // we have a winner
                    print("Winner is: \(currentPlayer)")
                    winner.isHidden = false
                    playAgainButton.isHidden = false
                    if currentPlayer == 1 {
                        winner.text = "Noughts has won!"
                    } else {
                        winner.text = "Crosses has won!"
                    }
                    activeGame = false
                }
            }
        }
        //print(senderObject.tag!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initGame()
    }

    func initGame() {
        winner.isHidden = true
        playAgainButton.isHidden = true
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        activeGame = true
        activePlayer = 1
        for i in 1...9 {
            //var button : UIButton
            if let button = view.viewWithTag(i) as? UIButton {
                button.setImage(nil, for: [])
            }
        }
    }
}

