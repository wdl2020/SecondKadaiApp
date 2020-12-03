//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by HY on 2020/12/02.
//  Copyright © 2020 HY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 名前を入力するテキストフィールド
    @IBOutlet weak var inputName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 画面遷移の準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController

        // テキストフィールドに入力された名前を格納
        resultViewController.name = inputName.text!
    }
    
    // 遷移先から戻ってきたとき
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // テキストフィールドの値をクリアする
        inputName.text = ""
    }
}

