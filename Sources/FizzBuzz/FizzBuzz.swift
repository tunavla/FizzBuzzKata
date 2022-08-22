public class FizzBuzz {
    enum Constants {
        static let fizz = "Fizz"
        static let separator = "\n"
    }
    func create(_ array: [Int]) -> String {
        array
            .map { shouldBeFizz($0) ? Constants.fizz : String($0) }
            .joined(separator: Constants.separator)
    }

    private func shouldBeFizz(_ number: Int) -> Bool {
        number % 3 == 0
    }
}
