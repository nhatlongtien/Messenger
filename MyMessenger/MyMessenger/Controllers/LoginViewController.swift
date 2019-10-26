//
//  LoginViewController.swift
//  MyMessenger
//
//  Created by NGUYENLONGTIEN on 10/26/19.
//  Copyright © 2019 NGUYENLONGTIEN. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    let inputsContainerView = UIView()
    let loginRegisterButton = UIButton(type: UIButton.ButtonType.system)
    let nameTextField = UITextField()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let nameSaperatorView = UIView()
    let emailSaperatorView = UIView()
    let profileImageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 61/255, green: 91/255, blue: 151/255, alpha: 1)
        //set up inputsContainerView
        setupInputsContainerView()
        //setup loginRegisterButton
        setuploginRegisterButton()
        //setup profileImageView
        setupProfileImageView()
    }
    func setupInputsContainerView(){
        inputsContainerView.backgroundColor = UIColor.white
        inputsContainerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(inputsContainerView)
        //need x, y, width, height
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1, constant: -24).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 152).isActive = true
        //custom inputsContainerView
        inputsContainerView.layer.cornerRadius = 5
        inputsContainerView.clipsToBounds = true
        //custom and put constrain for nameTextField
        nameTextField.placeholder = "Name"
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameTextField)
        nameTextField.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor, constant: 12).isActive = true
        nameTextField.topAnchor.constraint(equalTo: inputsContainerView.topAnchor, constant: 0).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, multiplier: 1).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //custom and put constrain for saperatorView
        nameSaperatorView.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        nameSaperatorView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameSaperatorView)
        nameSaperatorView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        nameSaperatorView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        nameSaperatorView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        nameSaperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        //custom and put contraint for emailTextField
        emailTextField.placeholder = "Email"
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailTextField)
        emailTextField.leftAnchor.constraint(equalTo: nameTextField.leftAnchor).isActive = true
        emailTextField.topAnchor.constraint(equalTo: nameSaperatorView.bottomAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: nameTextField.widthAnchor, multiplier: 1).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //custom and put constraint for emailSaperatorView
        emailSaperatorView.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        emailSaperatorView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailSaperatorView)
        emailSaperatorView.leadingAnchor.constraint(equalTo: nameSaperatorView.leadingAnchor).isActive = true
        emailSaperatorView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailSaperatorView.widthAnchor.constraint(equalTo: nameSaperatorView.widthAnchor).isActive = true
        emailSaperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        //custom and put constraint for passwordTextField
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailSaperatorView.bottomAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: emailTextField.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor, multiplier: 1).isActive = true
    }
    func setuploginRegisterButton(){
        loginRegisterButton.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        loginRegisterButton.setTitle("Register", for: UIControl.State.normal)
        loginRegisterButton.translatesAutoresizingMaskIntoConstraints = false
        loginRegisterButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        loginRegisterButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        view.addSubview(loginRegisterButton)
        //need x, y, width, height
        loginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginRegisterButton.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 12).isActive = true
        loginRegisterButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor, multiplier: 1) .isActive = true
        loginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    func setupProfileImageView(){
        profileImageView.image = UIImage(named: "image1")
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileImageView)
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.bottomAnchor.constraint(equalTo: inputsContainerView.topAnchor, constant: -12).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
}
