import XCTest

import CurryingTests

var tests = [XCTestCaseEntry]()
tests += CurryingTests.allTests()
XCTMain(tests)
