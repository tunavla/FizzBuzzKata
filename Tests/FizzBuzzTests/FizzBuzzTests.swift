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

    func test_setNumbers_getStringWithNewLineSeparator() {
        XCTAssertEqual(sut.create([1,2,4]), "1\n2\n4")
    }

    func test_setNumbers_replaceNumberDiv3WithFizz() {
        XCTAssertEqual(sut.create([1,2,3]), "1\n2\nFizz")
    }

    func test_setNumbers_replaceNumberDiv5WithBuzz() {
        XCTAssertEqual(sut.create([1,2,3,4,5]), "1\n2\nFizz\n4\nBuzz")
    }

    func test_setNumbers_replaceNumberDiv3and5WithFizzBuzz() {
        let input = Array(1...16)
        let expectedResult = "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz\n16"
        let result = sut.create(input)
        XCTAssertEqual(result, expectedResult)
    }

}
