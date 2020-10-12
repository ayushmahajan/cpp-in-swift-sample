//
//  ObjCWrapperTutorialTests.swift
//  ObjCWrapperTutorialTests
//
//  Created by ayush mahajan on 12/10/20.
//  Copyright © 2020 ayush mahajan. All rights reserved.
//

import XCTest
import CppDependencyTutorial

class ObjCWrapperTutorialTests: XCTestCase {

    func testWrapperFunction() {
        let wrapper = CppDependencyWrapper()
        let result = wrapper.randomString(with: 10)
        print("From Swift -> result is \(result)")
    }
}
