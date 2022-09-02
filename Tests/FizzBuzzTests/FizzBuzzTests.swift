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

    func test_setNumbers1to3_replaceNumberDiv3WithFizz() {
        XCTAssertEqual(sut.create([1,2,3]), "1\n2\nFizz")
    }

    func test_setNumbers1to5_replaceNumberDiv5WithBuzz() {
        XCTAssertEqual(sut.create([1,2,3,4,5]), "1\n2\nFizz\n4\nBuzz")
    }

    func test_setNumbers1to10_replaceNumberDiv3and5WithFizzBuzz() {
        let input = Array(1...16)
        let expectedResult = "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz\n16"
        let result = sut.create(input)
        XCTAssertEqual(result, expectedResult)
    }

    func test_setArrayWithTreeDigitNumber_replaceDigitCountDiv3WithFizz() {
        let input = [1, 22, 133]
        let expectedResult = "1\n22\nFizz"
        let result = sut.create(input)
        XCTAssertEqual(result, expectedResult)
    }

    func test_setArrayWith5DigitNumber_replaceDigitCountDiv5WithBuzz() {
        let input = [1, 22, 133, 4546, 54321]
        let expectedResult = "1\n22\nFizz\n4546\nBuzz"
        let result = sut.create(input)
        XCTAssertEqual(result, expectedResult)
    }

    func test_setArrayWith15DigitNumber_replaceDigitCountDiv15WithFizzBuzz() {
        let input = [1, 22, 133, 4546, 54321, 1004567, 111111111111111]
        let expectedResult = "1\n22\nFizz\n4546\nBuzz\n1004567\nFizzBuzz"
        let result = sut.create(input)
        XCTAssertEqual(result, expectedResult)
    }

    func test_setAllCasesNumber_getFiss_Buzz_FizzBuzz_Fiss_Buzz_FizzBuzz() {
        let input = [312, 520, 225, 146, 10111, 101010101010101]
        let expectedResult = "Fizz\nBuzz\nFizzBuzz\nFizz\nBuzz\nFizzBuzz"
        let result = sut.create(input)
        XCTAssertEqual(result, expectedResult)
    }

}
