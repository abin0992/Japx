import XCTest
@testable import Japx

final class JapxTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Japx().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
