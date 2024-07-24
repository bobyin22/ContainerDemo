//
//  ViewController.swift
//  ContainerDemo
//
//  Created by 邱慧珊 on 2024/7/24.
//

import UIKit

class ViewController: UIViewController {
    
        let vc2 = SecondViewController()
        let vc3 = ThirdViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // Programmtic方式 在VC下 用container方式塞入 vc2 vc3
    private func setup() {
        
        addChild(vc2)
        addChild(vc3)
        self.view.addSubview(vc2.view)
        self.view.addSubview(vc3.view)
        
        vc2.didMove(toParent: self)
        vc3.didMove(toParent: self)
        
        vc2.view.frame = self.view.bounds
        vc3.view.frame = self.view.bounds
        vc3.view.isHidden = true
    }
    
    // 點擊UISegmentedControl 用segue判斷 更換VC
    @IBAction func didTappedSegment(segment: UISegmentedControl) {
        vc2.view.isHidden = true
        vc3.view.isHidden = true
        
        if segment.selectedSegmentIndex == 0 {
            // show red vc
            vc2.view.isHidden = false
        } else {
            // show blue vc
            vc3.view.isHidden = false
        }
    }


}

