//
//  ViewController.swift
//  TestDemo
//
//  Created by Makarov_Maxim on 16.03.2022.
//

import UIKit

class ViewController: UIViewController {

    private(set) var volume = 0
    
    func setVolume(value: Int) {
        volume = min(max(value, 0), 100)
        
    }
    
    func charachtersCompare(stringOne: String, stringTwo: String) -> Bool {
        return Set(stringOne) == Set(stringTwo)
    }

}

