class Magician: GameCharacters {
    var weapon : Weapon
    
    override init(name: String) {
        weapon = Potion()
        super.init(name : name)
        
        
    }
     func health(teamates: GameCharacters) {
        teamates.life = teamates.life + self.strenght
        
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
    
        func selectCharacter(team:[GameCharacters])-> GameCharacters{
            var characterIndex = 0
            let character = GameCharacters(name: "")
            
            print("selectionnez un personnage")
            for character in team{
                characterIndex += 1
                print("\(characterIndex)- \(character.name)")
            }
            return character
}
    
}
