//
//  ViewController.swift
//  Contraints
//
//  Created by alfredo on 1/27/20.
//  Copyright © 2020 Alfredo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        setUpSubviews()
        setUpSubviewsWithAnchors()
    }
    
    //MARK: - Methods
    
    func setUpSubviews(){
        let blueView = UIView()
        
        blueView.backgroundColor = .blue
        
        // Disables auto-resizing mask and prevents view from creating its own contraints
        blueView.translatesAutoresizingMaskIntoConstraints = false
        //add view created
        view.addSubview(blueView)
        //item: item that is going to be constrained
        //attribute: the attribute that you want to constrain (e.g. Leading edge)
        //toItem: otherView/Object that we are constraining to
        let blueLeadingConstraint = NSLayoutConstraint(item: blueView,
                                                       attribute: .leading,
                                                       relatedBy: .equal,
                                                       toItem: view.safeAreaLayoutGuide,
                                                       attribute: .leading,
                                                       multiplier: 1,
                                                       constant: 20)
        
        let blueCenterYConstraint = NSLayoutConstraint(item: blueView,
                                                       attribute: .centerY,
                                                       relatedBy: .equal,
                                                       toItem: view.safeAreaLayoutGuide,
                                                       attribute: .centerY,
                                                       multiplier: 1,
                                                       constant: 0)
        let blueHeightConstraint = NSLayoutConstraint(item: blueView,
                                                      attribute: .height,
                                                      relatedBy: .equal,
                                                      toItem: nil,
                                                      attribute: .notAnAttribute,
                                                      multiplier: 1,
                                                      constant:  100)
        let blueWidthConstraint = NSLayoutConstraint(item: blueView,
                                                     attribute: .width,
                                                     relatedBy: .equal,
                                                     toItem: blueView,
                                                     attribute: .height,
                                                     multiplier: 2,
                                                     constant: 0)
        //Activate Contrains
        NSLayoutConstraint.activate([blueLeadingConstraint, blueCenterYConstraint, blueHeightConstraint, blueWidthConstraint])
    }
    //Alternative method for setting up constraints via anchors
    func setUpSubviewsWithAnchors(){
        
        //MARK: 1. Create View
        
        let blueView = UIView()
              
        //MARK: 2. Turn On/Off Auto-Resizing/Define Attributes
        
        blueView.backgroundColor = .blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        //MARK: 3. Add View As Subview or What Ever Is Called For
        
        view.addSubview(blueView)
        
        //MARK: 4. Define Constraints
        
        let blueLeadingConstraint = blueView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        let blueCenterYConstraint = blueView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 0)
        let blueHeightConstraint = blueView.heightAnchor.constraint(equalToConstant: 100)
        let blueWidthConstraint = blueView.widthAnchor.constraint(equalTo: blueView.heightAnchor, multiplier: 2)
        
        //MARK: 5. Activate Constraints
        
        NSLayoutConstraint.activate([blueLeadingConstraint, blueCenterYConstraint, blueHeightConstraint, blueWidthConstraint])
    }
}

