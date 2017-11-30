//personnages 

class GameCharacters {
    
    var name: String = ""
    var life: Int
    var magic : Int
    var weapon : Weapon
        
    init(name: String ) {
        self.name = name
        self.life = 100
        self.weapon = Weapon(name: "hands", degats: 1)
        self.magic = 0
        
    }
    
    func attack(ennemy: GameCharacters) {
        ennemy.life = ennemy.life - self.weapon.degats
        if ennemy.life < 0 {
            ennemy.life = 0
        }
    
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
