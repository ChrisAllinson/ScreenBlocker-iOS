//
//  ScreenBlockerTests.swift
//  MetronomeTests
//
//  Created by Chris Allinson on 2018-07-12.
//  Copyright © 2018 Chris Allinson. All rights reserved.
//

import XCTest
@testable import ScreenBlocker

class ScreenBlockerTests: XCTestCase {
    
    // MARK: instance variables
    
    var window: UIWindow!
    var tempVC: UIViewController!
    var sut: ScreenBlocker!
    
    
    
    override func setUp() {
        super.setUp()
        
        window = UIWindow()
        tempVC = UIViewController()
        window.rootViewController = tempVC
        window.makeKeyAndVisible()
        
        sut = ScreenBlocker.shared
    }
    
    override func tearDown() {
        window = nil
        tempVC = nil
        sut = nil
        
        super.tearDown()
    }
    
    
    
    // MARK: tests
    
    func testApplicationWillResignActive() {
        
        // given
        
        
        // when
        
        sut.show()
        
        
        // then
        
        let tempBlocker = tempVC.childViewControllers[0] as? ScreenBlockerViewController
        
        XCTAssertNotNil(tempBlocker, "applicationWillResignActive() displays ScreenBlockerViewController successfully")
    }
    
    func testApplicationWillResignActive_BgColor() {
        
        // given
        
        let tempColor: UIColor = UIColor(red: 51.0/255.0, green: 51.0/255.0, blue: 51.0/255.0, alpha: 1.0)
        
        
        // when
        
        sut.show(bgColor: tempColor)
        
        
        // then
        
        let tempBlocker = tempVC.childViewControllers[0] as? ScreenBlockerViewController
        
        XCTAssertNotNil(tempBlocker, "applicationWillResignActive() displays ScreenBlockerViewController successfully")
        XCTAssertTrue((tempBlocker?.view.backgroundColor)! == tempColor, "bgColor set correctly")
    }
    
    func testApplicationDidBecomeActive() {
        
        // given
        
        
        // when
        
        sut.show()
        sut.hide()
        sleep(for: 1.5)
        
        
        // then
        
        XCTAssertTrue(tempVC.childViewControllers.count == 0, "applicationDidBecomeActive() hides ScreenBlockerViewController successfully")
    }
}
