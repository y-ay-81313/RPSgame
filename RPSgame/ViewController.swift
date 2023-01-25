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
        
        //ルールの説明文
        let label = UILabel()
        
        //文字の改行をさせる設定
        label.numberOfLines = 0
        label.font = label.font.withSize(25)
        
        //文字の行間を開ける
        //基本の文字styleを作成
        let style = NSMutableParagraphStyle()
        //文字styleは行間の設定だけ改造(普通より大きい値に)
        style.lineSpacing = 18
        
        //改造した文字styleを使って、属性付き文字列をlabelに設定
        label.attributedText = NSMutableAttributedString(string: "＜＜じゃんけんゲーム＞＞\n１：自分が出す手を選ぶ\n２：『ゲーム開始』を押して始める",
                                                         attributes: [NSAttributedString.Key.paragraphStyle : style])
        // ルールの横縦幅
        let labelWidth:CGFloat = 300
        let labelHeight:CGFloat = 300
        
        label.frame = CGRect(x:screenWidth/2 - labelWidth/2,
                             y:screenHeight/4 - labelHeight/4,
                             width:labelWidth,
                             height:labelHeight)
        self.view.addSubview(label)
        
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

