//
//  ViewController.swift
//  FlappyBird
//
//  Created by 許 裕士 on 2019/04/23.
//  Copyright © 2019 許 裕士. All rights reserved.
//

import UIKit
import SpriteKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //SKViewに型を変換する
        let skView = self.view as! SKView
        
        //FPSを表示する
        skView.showsFPS = true
        
        //ノードの数を表示する
        skView.showsNodeCount = true
        
        //ビューと同じサイズでシーンを作成する
        let scene = GameScene(size:skView.frame.size)
        
        //ビューにシーンを表示する
        skView.presentScene(scene)
        
        //当たり判定の確認
        //skView.showsPhysics = true
    }
    
    //ステータスバーを消す
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }


}

