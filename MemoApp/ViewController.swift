//
//  ViewController.swift
//  MemoApp
//
//  Created by kk-project on 2019/06/05.
//  Copyright © 2019 kk-project. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self

        // AppDelegateが持っている前回の内容を呼び出してTextViewに表示されるようにします。
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        textView.text = appDelegate.lastText
    }

    // TextViewに何か入力されたら動作します。
    func textViewDidChange(_ textView: UITextView) {
        // AppDelegateを呼び出して変数に格納します。
        let appDelegate = UIApplication.shared.delegate as! AppDelegate

        // AppDelegateに記述した"lastText"に入力されている内容を格納します。
        appDelegate.lastText = textView.text
    }


}

