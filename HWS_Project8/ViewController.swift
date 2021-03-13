//
//  ViewController.swift
//  HWS_Project8
//
//  Created by J on 2021/03/11.
//

import UIKit

class ViewController: UIViewController {
    
    var cluesLabel: UILabel!
    var answerLabel: UILabel!
    var currentAnswer: UITextField!
    var scoreLabel: UILabel!
    var letterButtons = [UIButton]()
    
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        scoreLabel = UILabel()
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.textAlignment = .right
        scoreLabel.text = "score: 0"
        view.addSubview(scoreLabel)
        
        cluesLabel = UILabel()
        cluesLabel.translatesAutoresizingMaskIntoConstraints = false
        cluesLabel.font = UIFont.systemFont(ofSize: 24)
        cluesLabel.text = "CLUES"
        cluesLabel.numberOfLines = 0
        view.addSubview(cluesLabel)
        
        answerLabel = UILabel()
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.font = UIFont.systemFont(ofSize: 24)
        answerLabel.text = "ANSWERS"
        answerLabel.numberOfLines = 0
        answerLabel.textAlignment = .right
        view.addSubview(answerLabel)
        
        
        
        //レイアウト調整
        NSLayoutConstraint.activate([
            
            //scoreLabelのtopAnchorをlayoutMarginsGuideのtopAnchorに合わせる
            scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            
            //scoreLabelの右端をlayoutMarginsGuideの右端に合わせる
            scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            //cluesLabelのtopAnchorをscoreLabelのbottomAnchorに固定
            cluesLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            
            //cluesLabelのleadingAnchorをlayoutMarginsGuideに合わせて100のスペースを取る
            cluesLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 100),
            
            //cluesLabelの幅をlayoutMarginsGuideの幅の60％から100を引いたものにする
            cluesLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6, constant: -100),
            
            //answerLabelのtopAnchorをscoreLabelのbottomAnchorに固定
            answerLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            
            //answerLabelの右端をlayoutMarginsGuideの末尾から100引いた位置にする
            answerLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -100),
            
            //answerLabelの幅をlayoutMarginsGuideの幅の40％から100引いたものにする
            answerLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.4, constant: -100),
            
            //answerLabelとcluesLabelの高さを同じにする
            answerLabel.heightAnchor.constraint(equalTo: cluesLabel.heightAnchor),
            
        ])
        
        cluesLabel.backgroundColor = .lightGray
        answerLabel.backgroundColor = .cyan
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

