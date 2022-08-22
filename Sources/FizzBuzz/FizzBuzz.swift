public class FizzBuzz {

    func create(_ array: [Int]) -> String {
        array
            .map { String($0) }
            .joined(separator: "\n")
    }
}
