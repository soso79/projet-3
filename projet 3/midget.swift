class Midget: GameCharacters {
    var weapon: Weapon
    override init(name: String) {
        weapon = Hache()
        super.init(name : name )
        
    }
    func selectAction()->Int {
        var userchoice: Int = 0
        
        repeat {
            
            print("1. Attaquer")
            print()
            if let entry = readLine(){
                if let number = Int(entry){
                    userchoice = number
                    
                }
                
                
            }
        } while userchoice != 1 
        
        
        
        
        
        
        
        return userchoice
        
        
    }
}
