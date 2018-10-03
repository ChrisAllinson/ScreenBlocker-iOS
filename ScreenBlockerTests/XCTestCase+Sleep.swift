//
//  XCTestCase+Sleep.swift
//  MetronomeTests
//
//  Created by Chris Allinson on 2018-07-12.
//  Copyright © 2018 Chris Allinson. All rights reserved.
//

import XCTest

extension XCTestCase {
    
    func sleep(for delay: Double) {
        let exp = expectation(description: "force wait for fade out")
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            exp.fulfill()
        }
        waitForExpectations(timeout: delay, handler: nil)
    }
}
