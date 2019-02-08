//
//  FizzbuzzTests.swift
//  FizzBuzzTests
//
//  Created by Simon Green on 08/02/2019.
//  Copyright © 2019 Simon Green. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class FizzbuzzTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testReturnsFizzWhenGivenThree() {
        XCTAssertEqual(Fizz.calculate(number: 3), "fizz")
    }
    
    func testReturnsOneWhenGivenOne() {
        XCTAssertEqual(Fizz.calculate(number: 1), "1")
    }
    
    func testReturnsBuzzWhenGivenFive() {
        XCTAssertEqual(Fizz.calculate(number: 5), "buzz")
    }
    
    func testReturnsFizzBuzzWhenGivenFifteen() {
        XCTAssertEqual(Fizz.calculate(number: 15), "fizzbuzz")
    }
    
//    func testReturnsCorrectValuesWhenRun() {
//        let fizzbuzz = Fizz()
//        XCTAssert
//    }

}
