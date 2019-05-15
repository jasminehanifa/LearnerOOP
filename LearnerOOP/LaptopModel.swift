//
//  LaptopModel.swift
//  LearnerOOP
//
//  Created by Jasmine Hanifa Mounir on 15/05/19.
//  Copyright © 2019 Jasmine Hanifa Mounir. All rights reserved.
//

import Foundation

class LaptopModel{
    var brand: String
    var memory: Int
    
    init(brandLaptop: String, memoryLaptop: Int) {
        self.brand = brandLaptop
        self.memory = memoryLaptop
    }
    
    func increaseMemory(){
        self.memory += 1
    }
    
    func decreaseMemory(){
        self.memory -= 1
    }
    
    func turnOn(){
        
    }
}
