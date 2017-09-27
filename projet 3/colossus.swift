class Colossus: GameCharacters {
    var weapon: Weapon
    override init(name: String) {
        weapon = Marteau()
        super.init(name : name )
        
    }
}
