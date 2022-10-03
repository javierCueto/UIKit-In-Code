//
//  TextFields_ViewController.swift
//  UIKit In Code
//
//  Created by Javier Cueto on 02/10/22.
//

import UIKit

final class TextFields_ViewController: UIViewController {
    
    // MARK: - Public properties
    private let borderTexField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.padding()
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.placeholder = "TextField border"
        textField.layer.cornerRadius = 5
        textField.keyboardAppearance = .dark
        textField.keyboardType = .numberPad
        textField.font = UIFont.boldSystemFont(ofSize: 14)
        return textField
    }()
    
    private let clearFieldSelector = #selector(clearTextField(_:))
    
    private lazy var backgroundColorTexField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray6
        textField.padding()
        textField.closeButton(action: clearFieldSelector, parentComponent: self)
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.placeholder = "Background color"
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    private lazy var blueColorTexField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemBlue.withAlphaComponent(0.2)
        textField.padding()
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.placeholder = "Blue Background color"
        textField.closeButton(action: clearFieldSelector, parentComponent: self)
        textField.layer.cornerRadius = 5
        textField.textColor = .systemBlue
        let placeHolder = textField.placeholder ?? String()
        let colorPlaceHolder = UIColor.systemBlue.withAlphaComponent(0.4)
        textField.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor : colorPlaceHolder])
        return textField
    }()
    
    
    private lazy var greenBorderTexField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemGreen.cgColor
        textField.padding()
        textField.closeButton(action: clearFieldSelector, parentComponent: self)
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.placeholder = "TextField green border"
        return textField
    }()
    
    private let shadowTexField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.padding()
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.layer.cornerRadius = 5
        textField.placeholder = "Shadow"
        textField.layer.shadowColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        textField.layer.shadowOpacity = 0.9
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 3
        textField.backgroundColor = .white
        return textField
    }()
    
    
    private let shadowClassTexField: PaddingTextField = {
        let textField = PaddingTextField(with: 10)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.layer.cornerRadius = 5
        textField.placeholder = "Shadow Class"
        textField.layer.shadowColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        textField.layer.shadowOpacity = 0.9
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 3
        textField.backgroundColor = .white
        return textField
    }()
    
    
    // MARK: - Private properties
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "TexFields In Code"
        configUI()
    }
    
    // MARK: - Helpers
    private func configUI() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(borderTexField)
        borderTexField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        borderTexField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        borderTexField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        borderTexField.addTarget(self, action: #selector(textFieldDidBeginEditing), for: .editingChanged)
        
        view.addSubview(backgroundColorTexField)
        backgroundColorTexField.topAnchor.constraint(equalTo: borderTexField.bottomAnchor, constant: 10).isActive = true
        backgroundColorTexField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        backgroundColorTexField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        backgroundColorTexField.addTarget(self, action: #selector(textFieldDidBeginEditing), for: .editingChanged)
        backgroundColorTexField.delegate = self
        backgroundColorTexField.addTarget(self, action: #selector(textFieldShouldReturn), for: .editingDidEnd)
        
        view.addSubview(blueColorTexField)
        blueColorTexField.topAnchor.constraint(equalTo: backgroundColorTexField.bottomAnchor, constant: 10).isActive = true
        blueColorTexField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        blueColorTexField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        view.addSubview(greenBorderTexField)
        greenBorderTexField.topAnchor.constraint(equalTo: blueColorTexField.bottomAnchor, constant: 10).isActive = true
        greenBorderTexField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        greenBorderTexField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        
        view.addSubview(shadowTexField)
        shadowTexField.topAnchor.constraint(equalTo: greenBorderTexField.bottomAnchor, constant: 10).isActive = true
        shadowTexField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        shadowTexField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        view.addSubview(shadowClassTexField)
        shadowClassTexField.topAnchor.constraint(equalTo: shadowTexField.bottomAnchor, constant: 10).isActive = true
        shadowClassTexField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        shadowClassTexField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        
    }
    
    // MARK: - Actions
    
    @objc
    private func clearTextField(_ button: UIButton) {
        guard
            let stack = button.superview,
            let textField = stack.superview as? UITextField
        else { return }
        
        textField.text = String()
        
    }
    
    // MARK: - Extension here
    
}

extension TextFields_ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        guard let text = textField.text, !text.isEmpty else { return }
        print(text)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        textField.text = String()
        return true
    }
}
