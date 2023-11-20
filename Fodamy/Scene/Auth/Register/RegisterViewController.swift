//
//  RegisterViewController.swift
//  Fodamy
//
//  Created by Furkan on 5.10.2023.
//

import UIKit

class RegisterViewController: UIViewController {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = L10n.Modules.RegisterViewController.title
        label.font = .font(.nunitoBold, size: .xxLarge)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        return label
    }()
    
    private let titleStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let usernameTextField = FloatLabelTextField()
    private let emailTextField = FloatLabelTextField()
    private let passwordTextField = FloatLabelTextField()
    
    private let textFieldStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let registerButton: UIButton = {
        var button = UIButton()
        button.setTitle(L10n.General.register, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .font(.nunitoSemiBold, size: .xxLarge)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        button.backgroundColor = .appHeather
        button.layer.cornerRadius = 6
        
        return button
    }()
    
    private let haveAccountLabel: UILabel = {
            let label = UILabel()
            label.text = L10n.Modules.RegisterViewController.bottomText
        label.font = .font(.nunitoSemiBold, size: .large)
            label.textColor = .appRaven
            return label
        }()
        
        private let signInLabel: UILabel = {
            let label = UILabel()
            label.text = L10n.General.login
            label.font = .font(.nunitoSemiBold, size: .large)
            label.textColor = .appRed
            return label
        }()
        
        private let bottomStackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .horizontal
            stackView.spacing = 10
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()
    
    private let mainStackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.alignment = .fill
            stackView.spacing = 32
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
    }()
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureContent()
        setupViews()
        applyConstraints()
    }
}

// MARK: - Configure
extension RegisterViewController {
    
    private func configureContent() {
        usernameTextField.title = L10n.Placeholder.username
        usernameTextField.leftImage = .icUser
        emailTextField.autocapitalizationType = .none
        emailTextField.keyboardType = .emailAddress
        emailTextField.title = L10n.Placeholder.email
        emailTextField.leftImage = .icMail
        passwordTextField.title = L10n.Placeholder.password
        passwordTextField.leftImage = .icPassword
        passwordTextField.isSecureTextEntry = true
    }
}

// MARK: - Layout
extension RegisterViewController {
    
    private func setupViews() {
        view.addSubview(scrollView)
        scrollView.addSubview(mainStackView)
        scrollView.addSubview(bottomStackView)
        mainStackView.addArrangedSubview(titleStackView)
        mainStackView.addArrangedSubview(textFieldStackView)
        mainStackView.addArrangedSubview(registerButton)
        titleStackView.addArrangedSubview(titleLabel)
        textFieldStackView.addArrangedSubview(usernameTextField)
        textFieldStackView.addArrangedSubview(emailTextField)
        textFieldStackView.addArrangedSubview(passwordTextField)
        bottomStackView.addArrangedSubview(haveAccountLabel)
        bottomStackView.addArrangedSubview(signInLabel)
    }
    
    private func applyConstraints() {
        
        let mainStackViewConstraints = [
            mainStackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 52),
            mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            mainStackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ]
        
        let bottomStackViewConstraints = [
        
            bottomStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8),
            bottomStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ]
        
        let scrollViewConstraints = [
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        
        let allConstraints = [
            mainStackViewConstraints,
            bottomStackViewConstraints,
            scrollViewConstraints
        ]
        NSLayoutConstraint.activate(allConstraints.flatMap { $0 })
    }
}

import SwiftUI
#if DEBUG

@available(iOS 13, *)
struct RegisterViewControllerPreview: PreviewProvider {
    static var previews: some View {
        RegisterViewController().showPreview()
    }
}
#endif
