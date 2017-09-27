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
    
}
