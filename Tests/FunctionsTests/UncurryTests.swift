import XCTest
import Currying

final class UncurryTests: XCTestCase {
    func testUncurry() {
        XCTAssert(uncurry(curry(*))(2,2) == 4)
    }

    static var allTests = [
        ("testUncurry", testUncurry),
    ]
}
