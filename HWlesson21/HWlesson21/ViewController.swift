//
//  ViewController.swift
//  HWlesson21
//
//  Created by Карина Дьячина on 8.02.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    let string = "Some text with attributes"
    let attributedString = NSMutableAttributedString()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupLabel()
        
        
    }
    
    func setupLabel() {
        label.text = "Some text"
        label.textColor = .black
        label.font = UIFont(name: "Optima", size: 20)
        label.textAlignment = .center
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(labelTapped))
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(tapGesture)
    }
    
    @objc func labelTapped(_ gesture: UITapGestureRecognizer) {
        print("print")
        setupattributedString()
    }
    
    func setupattributedString() {
        
                let attributes: [NSAttributedString.Key: Any ] = [
                .font: UIFont.boldSystemFont(ofSize: 18),
                .foregroundColor: UIColor.systemPink,
                .underlineStyle: NSUnderlineStyle.single.rawValue
                ]
                let attributedString = NSAttributedString(string: string, attributes: attributes)
                
                    label.attributedText = attributedString
                    
                }
    
    //MARK: - не работает removeAttribute
    @IBAction func resetButton(_ sender: Any) {
       // setupLabel()
        attributedString.removeAttribute(.font, range: NSRange(location: 0, length: attributedString.length))
        attributedString.removeAttribute(.foregroundColor, range: NSRange(location: 0, length: attributedString.length))
        attributedString.removeAttribute(.underlineStyle, range: NSRange(location: 0, length: attributedString.length))
    }
    
    
    @IBAction func changeButton(_ sender: Any) {
        
    let attributes: [NSAttributedString.Key: Any ] = [
    .font: UIFont.boldSystemFont(ofSize: 25),
    .foregroundColor: UIColor.systemBlue,
    .underlineStyle: NSUnderlineStyle.single.hashValue,
    .underlineColor: UIColor.green
    ]
    let attributedString = NSAttributedString(string: string, attributes: attributes)
    
        label.attributedText = attributedString
    
    }
    
    @IBAction func segmentControlClik(_ sender: Any) {
        switch segmentControl.selectedSegmentIndex {
        case 0: 
            let attributes: [NSAttributedString.Key: Any ] = [
            .font: UIFont.boldSystemFont(ofSize: 10),
            .foregroundColor: UIColor.systemGray2,
            .underlineStyle: NSUnderlineStyle.single.hashValue
            ]
            let attributedString = NSAttributedString(string: string, attributes: attributes)
            
                label.attributedText = attributedString
        default:
            let attributes: [NSAttributedString.Key: Any ] = [
            .font: UIFont.boldSystemFont(ofSize: 36),
            .foregroundColor: UIColor.systemPurple,
            .underlineStyle: NSUnderlineStyle.single.rawValue
            ]
            let attributedString = NSAttributedString(string: string, attributes: attributes)
            
                label.attributedText = attributedString
            let attriburedString = NSMutableAttributedString(string: string)
        }

    }
    
    
}

//let attriburedString = NSMutableAttributedString(string: string)
//let range = (string as NSString).range(of: "text")
//let range1 = (string as NSString).range(of: "Some")
//attributedString.addAttribute(.backgroundColor, value: UIColor.blue, range: range)
//attributedString.addAttribute(.font, value: UIFont(name: "Callout-Bold", size: 21) as Any, range: range1)
//attributedString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.hashValue, range: range)
//
//label.attributedText = attributedString
