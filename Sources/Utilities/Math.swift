extension Int {
    
    static func random(min: Int, max: Int) -> Int {
        
        Int.random(in: Swift.min(min, max)...Swift.max(min, max))
        
    }
    
}
