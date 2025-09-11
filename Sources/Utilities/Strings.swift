enum Strings {
    static var gameName: String {
        "SamQuest 01"
    }
    static var goodbye: String {
        "Goodbye!"
    }
    static var invalidInput: String {
        "Invalid input."
    }
    static var somethingWentWrong: String {
        "Something went wrong."
    }
    static var nothingHere: String {
        "There's nothing here."
    }
    static var helpMenu: String {
        """
        \n
        SamQuest01           Help
        -------------------------
        w - north     j - examine
        s - south     i - info
        a - west      l - talk
        d - east      q = quit
        \n
        """
    }
    static func chooseTo(_ verb: Verbs) -> String {
        return "Choose something to \(verb)."
    }
    static func nothingTo(_ verb: Verbs) -> String {
        return "There's nothing to \(verb) here."
    }
}
