//
//  QuestionViewController.swift
//  wordlist
//
//  Created by Shu Fujita on 2020/05/23.
//  Copyright © 2020 Fujita shu. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var nextButton: UIButton!

    var isAnswered: Bool = false//回答したか次の質問へ行くかの判定
    var wordArray: [Dictionary<String, String>] = []//
    var nowNumber: Int = 0//現在の回答数
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.text = ""
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        wordArray = saveData.array(forKey: "WORD") as![Dictionary<String, String>]
        //問題をシャッフルする
        wordArray.shuffle()
        questionLabel.text = wordArray[nowNumber]["english"]
    }
    @IBAction func nextButtonTapped (){
           //回答したか
           if isAnswered{
               //次の問題へ
               nowNumber += 1
               answerLabel.text = ""
               
               //次の問題を表示するか
               if nowNumber < wordArray.count {
                   questionLabel.text = wordArray[nowNumber]["english"]
                   isAnswered = false
                   nextButton.setTitle("答えを表示", for: .normal)
               }else {
                   nowNumber = 0
                   performSegue(withIdentifier: "toFinishView", sender: nil)
               }
           }else{
               answerLabel.text = wordArray[nowNumber]["japanese"]
               isAnswered = true
               nextButton.setTitle("次へ", for: .normal)
           }
       }


    
}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


