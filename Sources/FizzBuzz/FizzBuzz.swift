public class FizzBuzz {
    func create(_ array: [Int]) -> String {
        array
            .map { $0 % 3 == 0 ? "Fizz" : String($0) }
            .joined(separator: "\n")
    }
}
