//
//  SecondViewController.swift
//  Covid 1 Test
//
//  Created by Yogesh Tekwani on 6/1/23.
//

import UIKit

class SecondViewController: UIViewController {

    var l1label = ""
    var l2label = ""
    var l3label = ""
    var l4label = ""
    
    let l1 : UILabel = {
       let l = UILabel()
        l.textColor = .systemBlue
        l.backgroundColor = .white
        return l
    }()
    
    let l2 : UILabel = {
       let l = UILabel()
        l.textColor = .systemBlue
        l.backgroundColor = .white
        return l
    }()
    
    let l3 : UILabel = {
       let l = UILabel()
        l.textColor = .systemBlue
        l.backgroundColor = .white
        return l
    }()
    
    let l4 : UILabel = {
       let l = UILabel()
        l.textColor = .systemBlue
        l.backgroundColor = .white
        return l
    }()
    
    let stack : UIStackView = {
       let sv = UIStackView()
        sv.axis = .vertical
        sv.backgroundColor = .white
        sv.distribution = .fillEqually
        sv.alignment = .center
        return sv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        stack.addArrangedSubview(l1)
        stack.addArrangedSubview(l2)
        stack.addArrangedSubview(l3)
        stack.addArrangedSubview(l4)
        
        l1.text = l1label
        l2.text = l2label
        l3.text = l3label
        l4.text = l4label
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(stack)
        
        let safeArea = self.view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
        
            stack.topAnchor.constraint(equalTo: safeArea.topAnchor),
            stack.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)            
        ])
        
        
    }
    


}
