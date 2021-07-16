import XCTest
import Functions

final class CurryTests: XCTestCase {
    func testCurry() {
        XCTAssert(curry(+)(1)(2) == 3)
        
        XCTAssert(curry(S3.init)(1)(2.0)(true) == S3(a: 1, b: 2.0, c: true))
    }

    static var allTests = [
        ("testCurry", testCurry),
    ]
}

struct S3: Equatable {
    let a: Int
    let b: Double
    let c: Bool
}
