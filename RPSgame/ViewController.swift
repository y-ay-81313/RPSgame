//
//  ViewController.swift
//  RPSgame
//
//  Created by ay on 2023/01/24.
//

import UIKit

class ViewController: UIViewController {

    let startButton = UIButton(frame: CGRect(x:40-10 , y: 150, width:300, height: 100))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //ゲーム画面
        layout()
        
    }
   
    //レイアウト画面
    func layout() {
        
        startButton.setTitle("ゲーム開始", for: .normal)
        startButton.setTitleColor(UIColor.black, for: .normal)
        startButton.backgroundColor = UIColor.gray
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 30.0)
        
        startButton.addTarget(self, action: #selector(self.tapStartButton(_ :)), for: .touchUpInside)
        self.view.addSubview(startButton)
    }
    
    
    @objc func tapStartButton(_ sender: UIButton){
    print("ボタンがタップされた")
    }
    
    
}

