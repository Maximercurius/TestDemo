//
//  TestDemoTests.swift
//  TestDemoTests
//
//  Created by Makarov_Maxim on 16.03.2022.
//

import XCTest
@testable import TestDemo


class TestDemoTests: XCTestCase {

    override func setUpWithError() throws {
        try super.setUpWithError()
    }

    override func tearDownWithError() throws {
        
        try super.tearDownWithError()
    }
    
    func testLowestVolumeShouldBeZero() {
        let sut = ViewController()
        sut.setVolume(value: -100)
        
        let volume = sut.volume
        XCTAssert(volume == 0, "Lowest value should be equal 0")
    }
    
    func testHighestVolumeShouldBe100() {
        let sut = ViewController()
        sut.setVolume(value: 200)
        
        let volume = sut.volume
        XCTAssert(volume == 100, "Hihest value should be equal 100")
    }

}
