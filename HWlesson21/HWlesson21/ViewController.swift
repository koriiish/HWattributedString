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
        setupLabel()
//        attributedString.removeAttribute(.font, range: NSMakeRange(0, 0))
//        attributedString.removeAttribute(.foregroundColor, range: NSMakeRange(0, 0))
//        attributedString.removeAttribute(.underlineStyle, range: NSRange(location: 0, length: 21))
    }
    
    
    @IBAction func changeButton(_ sender: Any) {
        
    let attributes: [NSAttributedString.Key: Any ] = [
    .font: UIFont.boldSystemFont(ofSize: 25),
    .foregroundColor: UIColor.systemBlue,
    .underlineStyle: NSUnderlineStyle.single.hashValue
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
        }

    }
    
    
}

