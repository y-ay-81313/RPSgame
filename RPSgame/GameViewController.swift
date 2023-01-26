//
//  GameViewController.swift
//  RPSgame
//
//  Created by ay on 2023/01/25.
//

import UIKit

class GameViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //ゲーム画面
        layout()
        
        //ぐー・ちょき・ぱー関数
        createJankenButton()
        
    }
    
    //レイアウト画面
    func layout() {
        
        
        // スクリーンの横縦幅
        let screenWidth:CGFloat = self.view.frame.width
        let screenHeight:CGFloat = self.view.frame.height
        
        // テキストの横縦幅
        let labelWidth:CGFloat = 100
        let labelHeight:CGFloat = 100
        
        //ゲーム画面の文字
        let label = UILabel()
        
        //文字の改行をさせる設定
        label.numberOfLines = 0
        
        label.frame = CGRect(x: screenWidth/2 - labelWidth/2,
                             y : screenHeight/2 - labelHeight/2,
                             width: labelWidth,
                             height: labelHeight + 150)
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "何を出す？" // ラベルのテキスト
        self.view.addSubview(label) // ラベルをviewに追加
    }

       //ぐー・ちょき・ぱーの画像ボタンを作成する関数
        func createJankenButton(){
            var rbutton: UIButton!
            var pbutton: UIButton!
            var sbutton: UIButton!
            
            let rImage = UIImage(named: "guu.jpeg")
            let pImage = UIImage(named: "paa.jpeg")
            let sImage = UIImage(named: "tyoki.jpeg")
            
            // スクリーンの横縦幅
            let screenWidth:CGFloat = self.view.frame.width
            let screenHeight:CGFloat = self.view.frame.height
            
            // テキストの横縦幅
            let imageWidth:CGFloat = 100
            let imageHeight:CGFloat = 100
            
            
            rbutton = UIButton(type: .custom)
            rbutton.setImage(rImage, for: .normal)
            self.view.addSubview(rbutton)
            rbutton.frame = CGRect(x: screenWidth/3 - imageWidth,
                                   y: screenHeight/2 + 200,
                                   width: imageWidth,
                                   height: imageHeight)
            rbutton.tag = 1
            rbutton.addTarget(self, action:#selector(janken(_:)), for: .touchUpInside)

            
            pbutton = UIButton(type: .custom)
            pbutton.setImage(pImage, for: .normal)
            self.view.addSubview(pbutton)
            pbutton.frame = CGRect(x: screenWidth/3 + 15,
                                   y: screenHeight/2 + 200,
                                   width: imageWidth,
                                   height: imageHeight)
            pbutton.tag = 2
            pbutton.addTarget(self, action:#selector(janken(_:)), for: .touchUpInside)
            
            sbutton = UIButton(type: .custom)
            sbutton.setImage(sImage, for: .normal)
            self.view.addSubview(sbutton)
            sbutton.frame = CGRect(x: screenWidth/2 + 70,
                                   y: screenHeight/2 + 200,
                                   width: imageWidth,
                                   height: imageHeight)
            sbutton.tag = 3
            sbutton.addTarget(self, action:#selector(janken(_:)), for: .touchUpInside)
            
        }
    
    @objc func janken(_ button:UIButton){
        if button.tag == 1{
            print("ぐー")
        }
        
        else if button.tag == 2{
            print("ぱー")
        }
       
        else{
            print("ちょき")
        }
    }

}
