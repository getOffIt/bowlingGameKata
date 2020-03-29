//
//  GameTests.swift
//  bowlingTests
//
//  Copyright © 2020 non. All rights reserved.
//

@testable import bowling
import XCTest

class GameTests: XCTestCase {
    var game = Game()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        game = Game()

    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testGutterGame() {
        for _ in 1...20 {
            game.roll(0)
        }
        XCTAssertEqual(0, game.score())
    }

    func testAllOnes() {
        for _ in 1...20 {
            game.roll(1)
        }
        XCTAssertEqual(20, game.score())
    }

}
