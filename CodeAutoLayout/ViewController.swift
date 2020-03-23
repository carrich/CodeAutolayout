//
//  ViewController.swift
//  CodeAutoLayout
//
//  Created by Ngoduc on 3/6/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

extension UITextField {
    func setPadding()  {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setBottomBorder(){
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var registorBt: UIButton!
    @IBOutlet weak var rePassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var mobile: UITextField!
    @IBOutlet weak var user: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let accountImage = UIImage(named: "user4")
        let mobileImage = UIImage(named: "dienthoai")
        let passwordImage = UIImage(named: "password")
        addLeftImageTo(txtField: user, addImage: accountImage!)
        user.setBottomBorder()
        addLeftImageTo(txtField: mobile, addImage: mobileImage!)
        mobile.setBottomBorder()
        addLeftImageTo(txtField: password, addImage: passwordImage!)
        password.setBottomBorder()
        addLeftImageTo(txtField: rePassword, addImage: passwordImage!)
        rePassword.setBottomBorder()
        registorBt.layer.cornerRadius = 5
        registorBt.layer.shadowColor = UIColor.gray.cgColor
        registorBt.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        registorBt.layer.shadowOpacity = 0.5
        registorBt.layer.shadowRadius = 0.0
    }
    func addLeftImageTo(txtField: UITextField, addImage img: UIImage){
        let leftImageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: img.size.width/3, height: img.size.height/3))
        leftImageView.image = img
        txtField.leftView = leftImageView
        txtField.leftViewMode = .always
    }
    
    
}

