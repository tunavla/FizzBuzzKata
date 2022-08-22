import XCTest
@testable import FizzBuzz

final class FizzBuzzTests: XCTestCase {
    private var sut: FizzBuzz!

    override func setUp() {
        super.setUp()
        sut = FizzBuzz()
    }

    func test_setEmptyArray_getEmptyString() {
        XCTAssertEqual(sut.create([]), "")
    }

    func test_setNumbers_getStringWithNEwLineSeparator() {
        XCTAssertEqual(sut.create([1,2,3]), "1\n2\n3")
    }
}
