//
//  MainViewController.swift
//  Oasis
//
//  Created by 곽희상 on 2022/04/27.
//

import Foundation
import UIKit
import SnapKit
import Then
import Firebase

class MainViewController: UIViewController{
    
    private let imageView = UIImageView().then() {
        $0.image = UIImage(named: "OASIS")
    }
    
    private let titlelabelView = UILabel().then() {
        $0.text = "LOGIN"
        $0.textAlignment = .center
        $0.textColor = UIColor(red: 0.483, green: 0.483, blue: 0.483, alpha: 1)
        $0.font = UIFont.systemFont(ofSize: 30)
    }
    
    private let subTitlelabelView = UILabel().then() {
        $0.text = "앱을 사용하기위해선 로그인이 필요합니다."
        $0.textAlignment = .center
        $0.textColor = UIColor(red: 0.583, green: 0.583, blue: 0.583, alpha: 1)
        $0.font = UIFont.systemFont(ofSize: 11)
    }
    
    private var emailField = UITextField().then() {
        $0.placeholder = "아이디를 입력해주세요."
        $0.keyboardType = .emailAddress
        $0.layer.cornerRadius = 13
        $0.backgroundColor = .white
        $0.layer.shadowRadius = 8
        $0.setLeftPaddingPoints(30)
        $0.layer.shadowOffset = CGSize(width: 0, height: 0)
        $0.layer.shadowOpacity = 1
        $0.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.12).cgColor
        
    }
    
    private let passwordField = UITextField().then() {
        $0.placeholder = "비밀번호를 입력해주세요."
        $0.isSecureTextEntry = true
        $0.layer.cornerRadius = 13
        $0.backgroundColor = .white
        $0.layer.shadowRadius = 8
        $0.setLeftPaddingPoints(30)
        $0.layer.shadowOffset = CGSize(width: 0, height: 0)
        $0.layer.shadowOpacity = 1
        $0.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.12).cgColor
    }
    
    private let loginButton = UIButton().then() {
        $0.setTitle("Login", for: .normal)
        $0.layer.cornerRadius = 27
        $0.backgroundColor = UIColor(red: 0.9607, green: 0.7843, blue: 0.7882, alpha: 1)
    }
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }

       func tapLogin(_ sender: Any) {
       }
       func tapSignUp(_ sender: Any) {
   //            m_id.text
   //            m_pwd.text
           Auth.auth().createUser(withEmail: emailField.text!, password: passwordField.text!) { authResult, error in
             // ...
               print(authResult)
           }
       }
    func addViews(){
        view.addSubview(imageView)
        view.addSubview(titlelabelView)
        view.addSubview(subTitlelabelView)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
    }
    
    func setLayout(){
        imageView.snp.makeConstraints{
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(68)
            $0.width.equalTo(120)
            $0.height.equalTo(82)
            $0.centerX.equalToSuperview()
        }
        
        titlelabelView.snp.makeConstraints{
            $0.top.equalTo(imageView.snp.bottom).offset(44)
            $0.centerX.equalToSuperview()
        }
        
        subTitlelabelView.snp.makeConstraints{
            $0.top.equalTo(titlelabelView.snp.bottom).offset(20)
            $0.centerX.equalToSuperview()
        }
        
        emailField.snp.makeConstraints{
            $0.centerX.equalTo(self.view)
            $0.top.equalTo(subTitlelabelView.snp.bottom).offset(44)
            $0.width.equalTo(289)
            $0.height.equalTo(51)
        }
        
        passwordField.snp.makeConstraints{
            $0.centerX.equalTo(self.view)
            $0.top.equalTo(emailField.snp.bottom).offset(21)
            $0.leading.trailing.equalTo(self.titlelabelView)
            $0.width.equalTo(289)
            $0.height.equalTo(51)
        }
        
        loginButton.snp.makeConstraints{
            $0.centerX.equalTo(self.view)
            $0.top.equalTo(passwordField.snp.bottom).offset(81)
            $0.width.equalTo(289)
            $0.height.equalTo(51)
        }
    }
}
extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}

extension UIView {
    func addGradient(
        with colors: [CGColor],
        locations: [NSNumber],
        start: CGPoint = .init(x: 0.25, y: 0.5),
        end: CGPoint = .init(x: 0.75, y: 1)
    ){
        let gradient = CAGradientLayer()
        
        gradient.colors = colors
        gradient.startPoint = start
        gradient.endPoint = end
        gradient.locations = locations
        gradient.frame = self.frame
        layer.insertSublayer(gradient, at: 0)
    }
}
