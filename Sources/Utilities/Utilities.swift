enum Utilities {
    enum InputOutput {
        static func readInput() -> String {
            print("INPUT: ", terminator: "")
            let input = readLine()!
            return input
        }
        static func chooseFromList<T>(items: [T], display: (T) -> String) -> T?
        {
            for (index, item) in items.enumerated() {
                print("\(index + 1) - \(display(item))")
            }
            print("Enter the number of your choice:")
            guard let input = readLine(),
                let selection = Int(input),
                selection >= 1 && selection <= items.count
            else {
                print("Invalid selection.")
                return nil
            }
            return items[selection - 1]
        }
        static func endGame() -> Bool {
            print("Game over!")
            return true
        }
    }
}
