//
//  ViewController.swift
//  AESCrypt
//
//  Created by 范文华 on 2016/11/3.
//  Copyright © 2016年 fanviwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let key: String = "1111111111111111"
        let pwdKey: String = AESCrypt.encrypt("1", password: key)
        print("加密pwdKey: \(pwdKey)")
        
        let password: String = "范文华"
        
        let encryptedPWD: String = AESCrypt.encrypt(password, password: pwdKey)
        
        let decryptedPWD: String = AESCrypt.decrypt(encryptedPWD, password: pwdKey)
        
        print("加密后密码: \(encryptedPWD)  \n解密后密码: \(decryptedPWD)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

