class Magician: GameCharacters {
    
    
    override init(name: String) {
        super.init(name : name)
        weapon = Weapon(name: "potion",  dammages: 35)
        
    }
     func health(teamates: GameCharacters) {
        teamates.life = teamates.life + self.weapon.dammages
        
    }
    func selectAction()->Int {
        var userchoice: Int = 0
        
        repeat {
            print("Quel choix ?")
            print("1. Attaquer")
            print("2. Soigner")
            print()
            if let entry = readLine(){
                if let number = Int(entry){
                    userchoice = number
                
                }
                
                
            }
        } while userchoice != 1 && userchoice != 2
        
        
        
        
        
        
        
        return userchoice
        
       
    }
    
        
    
}
