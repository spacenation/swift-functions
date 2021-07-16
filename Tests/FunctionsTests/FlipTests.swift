import XCTest
import Functions

final class FlipTests: XCTestCase {
    func testFlip() {
        XCTAssert(curry(flip(-))(1)(2) == 1)
        XCTAssert(flip(curry(-))(1)(2) == 1)
    }

    static var allTests = [
        ("testFlip", testFlip),
    ]
}
