class Magician: GameCharacters {
    var weapon : Weapon
    
    override init(name: String) {
        weapon = Potion()
        super.init(name : name)
        
        
    }
     func health(teamates: GameCharacters) {
        teamates.life = teamates.life + self.strenght
        
    }

}
