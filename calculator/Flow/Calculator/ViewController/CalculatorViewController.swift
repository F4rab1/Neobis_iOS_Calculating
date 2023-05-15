//
//  ViewController.swift
//  calculator
//
//  Created by Фараби Иса on 16.05.2023.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    private var viewModel: CalculatorViewModelType
    
    let displayLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 48)
        label.textAlignment = .right
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let button0: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("0", for: .normal)
        button.contentHorizontalAlignment = .left
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let button1: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("1", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let button2: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("2", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let button3: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("3", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let button4: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("4", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let button5: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("5", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let button6: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("6", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let button7: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("7", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let button8: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("8", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let button9: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("9", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let buttonDot: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle(",", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let buttonEqual: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 160/255, blue: 10/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.contentVerticalAlignment = .center
        button.setTitle("=", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let buttonPlus : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 160/255, blue: 10/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("+", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 7, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let buttonMinus: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 160/255, blue: 10/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("-", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 8, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let buttonMultiply: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 160/255, blue: 10/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("×", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let buttonDivise: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 160/255, blue: 10/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("÷", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 7, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let buttonPercent: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("%", for: .normal)
        button.setTitleColor(.black, for: .normal)
//        button.contentEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let buttonSign: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 7, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let buttonClear: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("AC", for: .normal)
        button.setTitleColor(.black, for: .normal)
//        button.contentEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let stackView1 : UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 17
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let stackView2 : UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 17
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let stackView3 : UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 17
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let stackView4 : UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 17
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    init(viewModel: CalculatorViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        let viewModel = CalculatorViewModel()
        self.viewModel = viewModel
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        
        setupViews()
        setupConstraints()
        viewModel.delegate = self
    }
    
    func setupViews() {
        view.addSubview(button0)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        view.addSubview(button5)
        view.addSubview(button6)
        view.addSubview(button7)
        view.addSubview(button8)
        view.addSubview(button9)
        view.addSubview(buttonDot)
        view.addSubview(buttonEqual)
        view.addSubview(buttonPlus)
        view.addSubview(buttonMinus)
        view.addSubview(buttonMultiply)
        view.addSubview(buttonDivise)
        view.addSubview(buttonPercent)
        view.addSubview(buttonSign)
        view.addSubview(buttonClear)
        view.addSubview(displayLabel)
        
        view.addSubview(stackView1)
        view.addSubview(stackView2)
        view.addSubview(stackView3)
        view.addSubview(stackView4)
        
        stackView1.addArrangedSubview(button1)
        stackView1.addArrangedSubview(button2)
        stackView1.addArrangedSubview(button3)
        stackView1.addArrangedSubview(buttonPlus)
        
        stackView2.addArrangedSubview(button4)
        stackView2.addArrangedSubview(button5)
        stackView2.addArrangedSubview(button6)
        stackView2.addArrangedSubview(buttonMinus)
        
        stackView3.addArrangedSubview(button7)
        stackView3.addArrangedSubview(button8)
        stackView3.addArrangedSubview(button9)
        stackView3.addArrangedSubview(buttonMultiply)
        
        stackView4.addArrangedSubview(buttonClear)
        stackView4.addArrangedSubview(buttonSign)
        stackView4.addArrangedSubview(buttonPercent)
        stackView4.addArrangedSubview(buttonDivise)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            displayLabel.bottomAnchor.constraint(equalTo: stackView4.topAnchor, constant: -17),
            displayLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            displayLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            displayLabel.heightAnchor.constraint(equalToConstant: 80),
            
            button0.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            button0.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 17),
            button0.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -2),
            button0.heightAnchor.constraint(equalToConstant: 80),
            
            buttonDot.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            buttonDot.leadingAnchor.constraint(equalTo: button0.trailingAnchor, constant: 16),
            buttonDot.widthAnchor.constraint(equalToConstant: 80),
            buttonDot.heightAnchor.constraint(equalToConstant: 80),
            
            buttonEqual.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            buttonEqual.leadingAnchor.constraint(equalTo: buttonDot.trailingAnchor, constant: 17),
            buttonEqual.widthAnchor.constraint(equalToConstant: 80),
            buttonEqual.heightAnchor.constraint(equalToConstant: 80),
            
            stackView1.bottomAnchor.constraint(equalTo: buttonEqual.topAnchor, constant: -17),
            stackView1.leadingAnchor.constraint(equalTo: button0.leadingAnchor),
            stackView1.trailingAnchor.constraint(equalTo: buttonEqual.trailingAnchor),
            stackView1.heightAnchor.constraint(equalToConstant: 80),
            
            stackView2.bottomAnchor.constraint(equalTo: stackView1.topAnchor, constant: -17),
            stackView2.leadingAnchor.constraint(equalTo: button0.leadingAnchor),
            stackView2.trailingAnchor.constraint(equalTo: buttonEqual.trailingAnchor),
            stackView2.heightAnchor.constraint(equalToConstant: 80),
            
            stackView3.bottomAnchor.constraint(equalTo: stackView2.topAnchor, constant: -17),
            stackView3.leadingAnchor.constraint(equalTo: button0.leadingAnchor),
            stackView3.trailingAnchor.constraint(equalTo: buttonEqual.trailingAnchor),
            stackView3.heightAnchor.constraint(equalToConstant: 80),
            
            stackView4.bottomAnchor.constraint(equalTo: stackView3.topAnchor, constant: -17),
            stackView4.leadingAnchor.constraint(equalTo: button0.leadingAnchor),
            stackView4.trailingAnchor.constraint(equalTo: buttonEqual.trailingAnchor),
            stackView4.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    @objc private func buttonTapped(_ sender: UIButton) {
        guard let title = sender.titleLabel?.text else {
            return
        }
        
        switch title {
        case "AC":
            viewModel.clear()
        case "+/-":
            // Implement the logic for plus/minus button
            break
        case "%":
            // Implement the logic for percent button
            break
        case "÷":
            viewModel.setOperator("÷")
        case "×":
            viewModel.setOperator("×")
        case "-":
            viewModel.setOperator("-")
        case "+":
            viewModel.setOperator("+")
        case "=":
            viewModel.calculateResult()
        default:
            viewModel.appendNumber(title)
        }
    }
    
}

extension CalculatorViewController: CalculatorViewModelDelegate {
    func updateDisplay(with text: String) {
        displayLabel.text = text
    }
}
