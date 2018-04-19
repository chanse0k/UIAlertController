//
//  ViewController.swift
//  UIAlertController
//
//  Created by D7703_21 on 2018. 4. 19..
//  Copyright © 2018년 D7703_21. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bt(_ sender: Any) {
        
        //오버로딩(한 객체에서 2개의 인자사용) = 중복정의
        //오버라이딩(델리게이트) = 재정의
        let myAlertController = UIAlertController(title: "아을람", message: "시이간이 되었슴", preferredStyle: .alert)
        
        //alertAction 만들기
        let okAction = UIAlertAction(title: "확인", style: .default, handler: {
            (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.blue
            
        })
        
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: {(myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.white
            
        })
        
        let testAction = UIAlertAction(title: "삭제", style: .destructive, handler: nil)
        
        
        
        
        //AlectAction을 AlectController
        myAlertController.addAction(okAction)
        myAlertController.addAction(cancelAction)
        myAlertController.addAction(testAction)
        
        //화면에 출력
        present(myAlertController, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
}

