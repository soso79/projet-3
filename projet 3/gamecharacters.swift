//personnages 

class GameCharacters {
    
    var name: String = ""
    var life: Int
    var strenght: Int
    
        
    init(name: String ) {
        self.name = name
        self.life = 100
        self.strenght = 10
        
        
    }
    
    func attack(ennemy: GameCharacters) {
        ennemy.life = ennemy.life - self.strenght
    
    }
    
/*    func play(player: GameCharacters) {
        var userchoice: Int
        
        repeat {
            print("Quel choix ?")
            print("1. Attaquer")
            print("2. Soigner")
            print()
        } while userchoice != 1 && userchoice != 2
        
        
        if userchoice == 1 {
            self.attack()
        } else {
            self.health()
        }
    }
   */
}
