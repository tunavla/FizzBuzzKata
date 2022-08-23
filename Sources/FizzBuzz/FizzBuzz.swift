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
        replace(number, by: 3, to: Constants.fizz)
    }

    private func replaceWithBuzz(_ number: Int) -> String? {
        replace(number, by: 5, to: Constants.buzz)
    }

    private func replaceWithFizzBuzz(_ number: Int) -> String? {
        replace(number, by: 15, to: Constants.fizzBuzz)
    }

    private func replace(_ number: Int, by divider: Int, to value: String) -> String? {
        let shouldReplace =
        number.isDivided(by: divider)
        || numberOfDigits(in: number).isDivided(by: divider)
        return shouldReplace ? value : nil
    }

    private func numberOfDigits(in number: Int) -> Int {
        number < 10 && number >= 0 ? 1 : 1 + numberOfDigits(in: number/10)
    }
}
private extension Int {
    func isDivided(by num: Int) -> Bool {
        self % num == 0
    }
}
