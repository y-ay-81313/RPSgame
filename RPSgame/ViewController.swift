//
//  ViewController.swift
//  RPSgame
//
//  Created by ay on 2023/01/24.
//

import UIKit

class ViewController: UIViewController {

    let startButton = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //navigationControllerの「戻る」ボタンのバーを消す
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        //ゲーム画面
        layout()
        
    }
   
    //レイアウト画面
    func layout() {
        
        // スクリーンの横縦幅
        let screenWidth:CGFloat = self.view.frame.width
        let screenHeight:CGFloat = self.view.frame.height
        
        // ボタンの横縦幅
        let startButtonWidth:CGFloat = 300
        let startButtonHeight:CGFloat = 100
        
        //ゲーム開始ボタンの設定
        startButton.frame = CGRect(x:screenWidth/2 - startButtonWidth/2,
                                   y:screenHeight - startButtonHeight-80,
                                   width:startButtonWidth,
                                   height:startButtonHeight)
        startButton.setTitle("ゲーム開始", for: .normal)
        startButton.setTitleColor(UIColor.black, for: .normal)
        startButton.backgroundColor = UIColor.gray
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 30.0)
        
        //ボタンが押されたときの処理
        startButton.addTarget(self, action: #selector(self.tapStartButton(_ :)), for: .touchUpInside)
        self.view.addSubview(startButton)
    }
    
    
    @objc func tapStartButton(_ sender: UIButton){
    
        //ゲーム開始ボタンが押されたら、GameViewControllerに遷移する
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "GameViewController") as! GameViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}

