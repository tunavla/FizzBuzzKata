public class FizzBuzz {
    enum Constants {
        static let fizz = "Fizz"
        static let separator = "\n"
    }
    func create(_ array: [Int]) -> String {
        array
            .map { number in
                var result = shouldBeFizz(number) ? Constants.fizz : String(number)
                result = number % 5 == 0 ? "Buzz" : result
                return result
            }
            .joined(separator: Constants.separator)
    }

    private func shouldBeFizz(_ number: Int) -> Bool {
        number % 3 == 0
    }
}
