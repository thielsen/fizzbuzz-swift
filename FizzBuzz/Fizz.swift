//
//  Fizz.swift
//  FizzBuzz
//
//  Created by Simon Green on 08/02/2019.
//  Copyright © 2019 Simon Green. All rights reserved.
//

import Foundation


class Fizz {
    func calculate(number: Int) -> String {
        if number % 15 == 0 {
            return "fizzbuzz"
        } else if number % 3 == 0 {
            return "fizz"
        } else if number % 5 == 0 {
            return "buzz"
        } else {
            return String(number)
        }
    }
    
    func run() {
        for index in 1...100 {
            print(calculate(number: index))
        }
    }
}
