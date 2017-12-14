//Characters

class GameCharacters {
    
    var name: String = ""
    var life: Int
    var magic : Int
    var weapon : Weapon
        
    init(name: String ) {
        self.name = name
        self.life = 100
        self.weapon = Weapon(name: "hands", dammages: 1)
        self.magic = 0
        
    }
    
    func attack(ennemy: GameCharacters) {
        ennemy.life = ennemy.life - self.weapon.dammages
        if ennemy.life < 0 {
            ennemy.life = 0
        }
    
    }
    

}
