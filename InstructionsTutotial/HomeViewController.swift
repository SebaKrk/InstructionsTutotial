//
//  ViewController.swift
//  InstructionsTutotial
//
//  Created by Sebastian Sciuba on 26/12/2020.
//

import UIKit
import Instructions

class HomeViewController: UIViewController {
    
    let coachMarksController = CoachMarksController()
    
    let nameTF: UITextField = {
        let textField = UITextField()
        setUpTextField(textField, placeHolder: "Name", keyboardType: UIKeyboardType.default)
        return textField
    }()
    
    let userNameTF : UITextField = {
        let textField = UITextField()
        setUpTextField(textField, placeHolder: "User Name", keyboardType: UIKeyboardType.default)
        return textField
    }()
    
    let addButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.systemGray, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.backgroundColor = .white
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(handleAddButton), for: .touchUpInside)
        
        return button
    }()
    @objc func handleAddButton() {
        print("add button pressed")
    }
    
    //    MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViewConstraints()
        self.coachMarksController.dataSource = self
        self.coachMarksController.delegate = self
        
    }
    //    MARK: SetUpViewConstraints
    
    func setUpTextFieldConstrainst(textField: UITextField) {
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 40).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -40).isActive = true
    }
    
    func setUpViewConstraints() {
        
        view.backgroundColor = .systemRed
        
        view.addSubview(nameTF)
        nameTF.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        setUpTextFieldConstrainst(textField: nameTF)
        
        view.addSubview(userNameTF)
        userNameTF.topAnchor.constraint(equalTo: nameTF.bottomAnchor , constant: 10).isActive = true
        setUpTextFieldConstrainst(textField: userNameTF)
        
        view.addSubview(addButton)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.topAnchor.constraint(equalTo: userNameTF.bottomAnchor,constant: 10).isActive = true
        addButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 120).isActive = true
        addButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -120).isActive = true
    }

}

extension HomeViewController: CoachMarksControllerDataSource, CoachMarksControllerDelegate {
    
    func coachMarksController(_ coachMarksController: CoachMarksController, coachMarkViewsAt index: Int, madeFrom coachMark: CoachMark) -> (bodyView: (UIView & CoachMarkBodyView), arrowView: (UIView & CoachMarkArrowView)?) {
        <#code#>
    }
    
    func coachMarksController(_ coachMarksController: CoachMarksController, coachMarkAt index: Int) -> CoachMark {
        <#code#>
    }
    
    func numberOfCoachMarks(for coachMarksController: CoachMarksController) -> Int {
        <#code#>
    }
    
}

// MARK: - HelperFuncions

func setUpTextField(_ textField: UITextField, placeHolder: String, keyboardType: UIKeyboardType) {
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.placeholder = placeHolder
    textField.keyboardType = keyboardType
    textField.returnKeyType = UIReturnKeyType.done
    textField.autocorrectionType = UITextAutocorrectionType.no
    textField.font = UIFont.systemFont(ofSize: 20)
    textField.textColor = UIColor.label
    textField.tintColor = UIColor.secondaryLabel
    
    textField.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes:[NSAttributedString.Key.foregroundColor : UIColor.secondaryLabel])
    
    textField.borderStyle = UITextField.BorderStyle.roundedRect
    textField.layer.borderColor = UIColor.secondaryLabel.cgColor
    textField.layer.borderWidth = 0.5
    textField.layer.cornerRadius = 5
    textField.clearButtonMode = UITextField.ViewMode.whileEditing
    textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
    
}

