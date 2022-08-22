public class FizzBuzz {
    enum Constants {
        static let fizz = "Fizz"
        static let buzz = "Buzz"
        static let fizzBuzz = "FizzBuzz"
        static let separator = "\n"
    }
    func create(_ array: [Int]) -> String {
        array
            .map {
                replaceWithFizzBuzz($0)
                ?? replaceWithBuzz($0)
                ?? replaceWithFizz($0)
                ?? String($0)
            }
            .joined(separator: Constants.separator)
    }

    private func replaceWithFizz(_ number: Int) -> String? {
        number % 3 == 0 ? Constants.fizz : nil
    }

    private func replaceWithBuzz(_ number: Int) -> String? {
        number % 5 == 0 ? Constants.buzz : nil
    }

    private func replaceWithFizzBuzz(_ number: Int) -> String? {
        number % 15 == 0 ? Constants.fizzBuzz : nil
    }
}
