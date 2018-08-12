//
//  ViewController.swift
//  swift-book
//
//  Created by Carlos Arenas on 6/30/18.
//  Copyright © 2018 Carlos Arenas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var c1 = chapter1()
    private var c2_1 = chapter2_1()
    private var c2_2 = chapter2_2()
    private var c2_3 = chapter2_3()
    private var c2_4 = chapter2_4()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Executing the book's expermients
        // c1.execute()
        // c2_1.execute()
        // c2_2.execute()
        // c2_3.execute()
        c2_4.execute()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

