class Warrior: GameCharacters {
    var weapon: Weapon
    override init(name: String) {
        weapon = Epee()
        super.init(name : name )
        
    }
}

