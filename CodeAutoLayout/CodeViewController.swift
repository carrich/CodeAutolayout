//
//  CodeViewController.swift
//  CodeAutoLayout
//
//  Created by Ngoduc on 3/22/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit
let logo = UIImageView(image: UIImage(named: "logo"))
let rePassword = UITextField()
let password1 = UITextField()
let mobile = UITextField()
let user = UITextField()
let textfieldGroup = UIStackView()
let dangkiButton = UIButton()
let daDangkiButton = UIButton()
let dangNhapButton = UIButton()
let stack1 = UIStackView()
let buttonGroup = UIStackView()
let bottomGroup = UIStackView()
let backButton = UIButton()
let homekiButton = UIButton()
let okButton = UIButton()
let bottomView = UIView()
let accountImage = UIImage(named: "user4")
let mobileImage = UIImage(named: "dienthoai")
let passwordImage = UIImage(named: "password")
extension UITextField {
    func setPadding1()
    {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setBottomBorder1()
    {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
    
}
extension UIButton {
    func setBottomShadow()
    {
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 0.0
    }
    func anchor(top: NSLayoutYAxisAnchor?,topD: CGFloat,leading: NSLayoutXAxisAnchor?,leadingD: CGFloat, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, trailingD: CGFloat, centerX : Bool, centerXto: NSLayoutXAxisAnchor?, widthTo: NSLayoutDimension?, widthMul: CGFloat, heightTo: NSLayoutDimension?, heightMul: CGFloat?)
    {
        translatesAutoresizingMaskIntoConstraints = false
        if let centerXto = centerXto
        {
            if centerX == true
            {
                centerXAnchor.constraint(equalTo: centerXto).isActive = true
            }
        }
        if let widthTo = widthTo
        {
             widthAnchor.constraint(equalTo: widthTo, multiplier: widthMul).isActive = true
        }
        if let top = top
        {
            topAnchor.constraint(equalTo: top, constant: topD).isActive = true
        }
        if let leading = leading
        {
            leadingAnchor.constraint(equalTo: leading, constant: leadingD).isActive = true
        }
        if let trailing = trailing
        {
            trailingAnchor.constraint(equalTo: trailing, constant: trailingD).isActive = true
        }
        if let heightTo = heightTo
        {
            heightAnchor.constraint(equalTo: heightTo, multiplier: heightMul!).isActive = true
        }
    }
    
}
func setupButton()
{
    daDangkiButton.setTitle("Đã có tài khoản?", for: .normal)
    dangkiButton.setTitleColor(.black, for: .application)
    dangNhapButton.setTitle("Đăng nhập", for: .normal)
    dangNhapButton.setTitleColor(.brown, for: .application)
    dangkiButton.setTitle("Đăng ký", for: .normal)
    dangkiButton.setTitleColor(.white, for: .application)
    dangkiButton.layer.backgroundColor = UIColor.brown.cgColor
    dangkiButton.layer.cornerRadius = 5
    dangNhapButton.setTitleColor(.brown, for: .normal)
    daDangkiButton.setTitleColor(.gray, for: .normal)
    backButton.setImage(UIImage(named: "tamgiac"), for: .normal)
    homekiButton.setImage(UIImage(named: "tron"), for: .normal)
    homekiButton.backgroundColor = .black
    okButton.setImage(UIImage(named: "vuong"), for: .normal)
    okButton.backgroundColor = .black
}
func addLeftImageTo1(txtField: UITextField, addImage img: UIImage){
    let leftImageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: img.size.width/3, height: img.size.height/3))
    leftImageView.image = img
    txtField.leftView = leftImageView
    txtField.leftViewMode = .always
}
func setupTextField()
{
    user.placeholder = "Họ và tên"
    user.textAlignment = .center
    mobile.placeholder = "Số điện thoại"
    password1.placeholder = "Mật Khẩu"
    rePassword.placeholder = "Nhập lại mật khẩu"
    mobile.textAlignment = .center
    password1.textAlignment = .center
    rePassword.textAlignment = .center
    addLeftImageTo1(txtField: user, addImage: accountImage!)
    user.setBottomBorder1()
    addLeftImageTo1(txtField: mobile, addImage: mobileImage!)
    mobile.setBottomBorder1()
    addLeftImageTo1(txtField: password1, addImage: passwordImage!)
    password1.setBottomBorder1()
    addLeftImageTo1(txtField: rePassword, addImage: passwordImage!)
    rePassword.setBottomBorder1()
    textfieldGroup.addArrangedSubview(user)
    textfieldGroup.addArrangedSubview(mobile)
    textfieldGroup.addArrangedSubview(password1)
    textfieldGroup.addArrangedSubview(rePassword)
}
extension UIStackView
{
    func setup1()
    {
        self.axis = .vertical
        self.alignment = .fill
        self.distribution = .fillEqually
        self.spacing = 20
    }
    func setup2()
    {
        self.axis = .horizontal
        self.alignment = .fill
        self.distribution = .fill
        self.spacing = 4
    }
    func setup3()
       {
        self.axis = .horizontal
        self.alignment = .fill
        self.distribution = .fillEqually
        self.spacing = 120
       }
    func anchor(top: NSLayoutYAxisAnchor?,topD: CGFloat,leading: NSLayoutXAxisAnchor?,leadingD: CGFloat, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, trailingD: CGFloat, centerX : Bool, centerXto: NSLayoutXAxisAnchor?, widthTo: NSLayoutDimension?, widthMul: CGFloat, heightTo: NSLayoutDimension?, heightMul: CGFloat?)
    {
        translatesAutoresizingMaskIntoConstraints = false
        if let centerXto = centerXto
        {
            if centerX == true
            {
                centerXAnchor.constraint(equalTo: centerXto).isActive = true
            }
        }
        if let widthTo = widthTo
        {
             widthAnchor.constraint(equalTo: widthTo, multiplier: widthMul).isActive = true
        }
        if let top = top
        {
            topAnchor.constraint(equalTo: top, constant: topD).isActive = true
        }
        if let leading = leading
        {
            leadingAnchor.constraint(equalTo: leading, constant: leadingD).isActive = true
        }
        if let trailing = trailing
        {
            trailingAnchor.constraint(equalTo: trailing, constant: trailingD).isActive = true
        }
        if let heightTo = heightTo
        {
            heightAnchor.constraint(equalTo: heightTo, multiplier: heightMul!).isActive = true
        }
    }
    func anchor3(centerX : Bool, centerXto: NSLayoutXAxisAnchor?, centerY : Bool, centerYto: NSLayoutYAxisAnchor?)
       {
           translatesAutoresizingMaskIntoConstraints = false
           if let centerXto = centerXto
           {
               if centerX == true
               {
                   centerXAnchor.constraint(equalTo: centerXto).isActive = true
               }
           }
            if let centerYto = centerYto
            {
                if centerY == true
                {
                centerYAnchor.constraint(equalTo: centerYto).isActive = true
                }
            }
       }
    
}
extension UIImageView
{
    func anchor(top: NSLayoutYAxisAnchor?,topD: CGFloat,leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, centerX : Bool, centerXto: NSLayoutXAxisAnchor?, widthTo: NSLayoutDimension?, widthMul: CGFloat, heightTo: NSLayoutDimension?, heightMul: CGFloat?)
    {
        translatesAutoresizingMaskIntoConstraints = false
        if let centerXto = centerXto
        {
            if centerX == true
            {
                centerXAnchor.constraint(equalTo: centerXto).isActive = true
            }
        }
        if let top = top
        {
            topAnchor.constraint(equalTo: top, constant: topD).isActive = true
        }
        if let widthTo = widthTo
               {
                    widthAnchor.constraint(equalTo: widthTo, multiplier: widthMul).isActive = true
               }
        if let heightTo = heightTo
        {
            heightAnchor.constraint(equalTo: heightTo, multiplier: heightMul!).isActive = true
        }
    }
}
extension UIView
{
    func anchor2(leading: NSLayoutXAxisAnchor?,leadingD: CGFloat, bottom: NSLayoutYAxisAnchor?, bottomD: CGFloat, trailing: NSLayoutXAxisAnchor?, trailingD: CGFloat, centerX : Bool, centerXto: NSLayoutXAxisAnchor?, heightTo: NSLayoutDimension?, heightMul: CGFloat?)
       {
            translatesAutoresizingMaskIntoConstraints = false
                  if let centerXto = centerXto
                  {
                      if centerX == true
                      {
                          centerXAnchor.constraint(equalTo: centerXto).isActive = true
                      }
                  }
                  if let bottom = bottom
                  {
                      bottomAnchor.constraint(equalTo: bottom, constant: bottomD).isActive = true
                  }
                
                  if let leading = leading
                  {
                      leadingAnchor.constraint(equalTo: leading, constant: leadingD).isActive = true
                  }
                  if let trailing = trailing
                  {
                      trailingAnchor.constraint(equalTo: trailing, constant: trailingD).isActive = true
                  }
                  if let heightTo = heightTo
                  {
                      heightAnchor.constraint(equalTo: heightTo, multiplier: heightMul!).isActive = true
                  }
       }
}
class CodeViewController: UIViewController {
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        view.addSubview(logo)
        setupTextField()
        view.addSubview(textfieldGroup)
        logo.anchor(top: view.topAnchor, topD: 74, leading: nil, bottom: nil, trailing: nil, centerX: true, centerXto: view.centerXAnchor, widthTo: view.widthAnchor, widthMul: 0.7, heightTo: logo.widthAnchor, heightMul: 8/15)
        textfieldGroup.setup1()
        textfieldGroup.anchor(top: logo.bottomAnchor, topD: 45, leading: view.leadingAnchor, leadingD: 40, bottom: nil, trailing: view.trailingAnchor, trailingD: -40, centerX: true, centerXto: view.centerXAnchor, widthTo: nil, widthMul: 0, heightTo: view.heightAnchor, heightMul: 0.3)
        setupButton()
        view.addSubview(dangkiButton)
        dangkiButton.setBottomShadow()
        dangkiButton.anchor(top: textfieldGroup.bottomAnchor, topD: 30, leading: view.leadingAnchor, leadingD: 40, bottom: nil, trailing: view.trailingAnchor, trailingD: -40, centerX: true, centerXto: view.centerXAnchor, widthTo: nil, widthMul: 0, heightTo: nil, heightMul: 0)
        buttonGroup.addArrangedSubview(daDangkiButton)
        buttonGroup.addArrangedSubview(dangNhapButton)
        view.addSubview(buttonGroup)
        buttonGroup.setup2()
        buttonGroup.anchor(top: dangkiButton.bottomAnchor, topD: 10, leading: nil, leadingD: 0, bottom: nil, trailing: nil, trailingD: 0, centerX: true, centerXto: view.centerXAnchor, widthTo: nil, widthMul: 0, heightTo: nil, heightMul: 0)
        bottomGroup.addArrangedSubview(backButton)
        bottomGroup.addArrangedSubview(homekiButton)
        bottomGroup.addArrangedSubview(okButton)
        bottomGroup.setup3()
        bottomView.backgroundColor = .black
        bottomView.addSubview(bottomGroup)
        view.addSubview(bottomView)
        bottomView.anchor2(leading: view.leadingAnchor, leadingD: 0, bottom: view.bottomAnchor, bottomD: 0, trailing: view.trailingAnchor, trailingD: 0, centerX: false, centerXto: nil, heightTo: view.heightAnchor, heightMul: 0.08)
        bottomGroup.anchor3(centerX: true, centerXto: bottomView.centerXAnchor, centerY: true, centerYto: bottomView.centerYAnchor)
    }
}




