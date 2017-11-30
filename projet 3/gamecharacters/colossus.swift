class Colossus: GameCharacters {
    
    override init(name: String) {
        super.init(name : name )
        weapon = Weapon(name: "Marteau", degats: 10)
    }
    
}
