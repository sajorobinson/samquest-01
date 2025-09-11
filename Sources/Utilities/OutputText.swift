struct OutputText {
    
    static var menuHelpText: String {
        """
         SamQuest01           Help
         -------------------------
         w - north     j - examine
         s - south     i - info
         a - west      l - talk
         d - east      q = quit
        """
    }
    
    static var defaultResponseText: String {
        
        "Default response"
        
    }
    
    static func chooseTo(_ verb: Verb) -> String {
        
        return "Choose something to \(verb)."
        
    }
    
    static func nothingTo(_ verb: Verb) -> String {
        
        return "There's nothing to \(verb) here."
        
    }
    
}
