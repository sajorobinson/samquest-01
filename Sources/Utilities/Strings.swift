enum Strings {
    
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
    
    static var defaultText: String {
        
        "Default text. Something went wrong."
        
    }
    
    static func chooseTo(_ verb: Verbs) -> String {
        
        return "Choose something to \(verb)."
        
    }
    
    static func nothingTo(_ verb: Verbs) -> String {
        
        return "There's nothing to \(verb) here."
        
    }
    
}
