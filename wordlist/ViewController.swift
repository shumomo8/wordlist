//
//  ViewController.swift
//  wordlist
//
//  Created by Shu Fujita on 2020/05/23.
//  Copyright © 2020 Fujita shu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   

  @IBAction func back (sender: UIStoryboardSegue){
    }
    
    @IBAction func startButtonTapped(){
        let saveDate = UserDefaults.standard
        if saveDate.array(forKey: "WORD") != nil{
            if saveDate.array(forKey: "WORD")!.count > 0 {
                performSegue(withIdentifier: "toQuestionView", sender: nil)
            }
        }else{
            let alert = UIAlertController(
            title: "単語",
            message: "まずは「単語一覧」をタップして単語登録してください",
            preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
            ))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
        override func viewDidLoad() {
               super.viewDidLoad()
               // Do any additional setup after loading the view.
           }
}
