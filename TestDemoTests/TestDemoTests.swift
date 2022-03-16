//
//  TestDemoTests.swift
//  TestDemoTests
//
//  Created by Makarov_Maxim on 16.03.2022.
//

import XCTest
@testable import TestDemo


class TestDemoTests: XCTestCase {
    
    var sut: ViewController!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = ViewController()
        
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testLowestVolumeShouldBeZero() {
        sut.setVolume(value: -100)
        
        let volume = sut.volume
        XCTAssert(volume == 0, "Lowest value should be equal 0")
    }
    
    func testHighestVolumeShouldBe100() {
        sut.setVolume(value: 200)
        
        let volume = sut.volume
        XCTAssert(volume == 100, "Hihest value should be equal 100")
    }
    
    func testCharsInStringAreTheSame() {
        //given
        let string1 = "qwerty"
        let string2 = "ytrewq"
        //when
        let bool = sut.charachtersCompare(stringOne: string1, stringTwo: string2)
        //then
        XCTAssert(bool, "Charachters should be the same in both strings")
    }
    
    func testCharsInStringAreDifferent() {
        //given
        let string1 = "qwerty1"
        let string2 = "ytrewq"
        //when
        let bool = sut.charachtersCompare(stringOne: string1, stringTwo: string2)
        //then
        XCTAssert(!bool, "Charachters should be different in both strings")
    }

}
