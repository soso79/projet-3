
// People play the game


class GamePlayers {
    var teamCharacters = [GameCharacters]()
    var playerNumber : Int
    init(number: Int) {
        self.playerNumber = number
        
    }
    //This function allow the player to choose the caracter to make the team
    func createTeam(players:[GamePlayers]){
        repeat {
            print("Joueur \(playerNumber) veuillez choisir un personnage parmis les types suivant\n 1.guerrier 2.magicien 3.nain 4.colosse")
            let userchoice = readLine()
            if let choice = Int(userchoice!) {
                switch choice {
                case 1:
                    print("veuillez rentrer un nom pour votre personnage ")
                    let characterName = readLine()
                    if let character = characterName {
                        if !checkNameUsed(personnageName: character,players: players){
                            let combattant = Warrior(name: character)
                            combattant.life = 100
                            teamCharacters.append(combattant)
                            print("personnage ajouté")
                        }
                    
                    }
                    
                case 2:
                    print("veuillez rentrer un nom pour votre personnage ")
                    let characterName = readLine()
                    if let character = characterName {
                        if !checkNameUsed(personnageName: character,players: players){
                        let combattant = Magician(name: character)
                        teamCharacters.append(combattant)
                        combattant.life = 100
                        
                    }
                        
                    }
                    
                    
                case 3:
                    print("veuillez rentrer un nom pour votre personnage ")
                    let characterName = readLine()
                    if let character = characterName {
                        if !checkNameUsed(personnageName: character,players: players){
                        let combattant = Midget(name: character)
                        teamCharacters.append(combattant)
                        combattant.life = 100
                        
                    }
                        
                    }
                    
                    
                case 4:
                    print("veuillez rentrer un nom pour votre personnage ")
                    let characterName = readLine()
                    if let character = characterName {
                        if !checkNameUsed(personnageName: character,players: players){
                        let combattant = Colossus(name: character)
                        teamCharacters.append(combattant)
                        combattant.life = 100
                        
                        
                    }
                    
                    }
                    
                    
                default:
                    print ("Recommencez")
                    
            }
                
            } else {
                print("je n ai pas compris")
            }
            
        }while teamCharacters.count < 3
        
    }
    func checkNameUsed(personnageName: String,players:[GamePlayers])->Bool {  // fonction qui permet de comparer les noms //
        for player in players{
            for character in player.teamCharacters {
                if personnageName.uppercased() == character.name.uppercased() {
                    print("Ce nom est deja pris")
                    return true
                }
            }
        }
        
        return false
    }
    
    // select caracter in the teamlist
    func selectCharacter()-> GameCharacters{
        var characterIndex = 0
        var character = GameCharacters(name:"")
        print("selectionnez un personnage")
        for character in teamCharacters{
            characterIndex += 1
            print("\(characterIndex)- \(character.name)- \(character.life) points de vie - inflige \(character.weapon.dammages) dégats ")
        }
        // select characternumber in the teamlist
        print("Veuillez selectionner un numéro de personnage")
        var validChoice = false
        repeat {
            
            let userChoice = readLine()
            if let choice = Int(userChoice!){
                switch choice{
                    case 1:
                        validChoice = true
                    character = teamCharacters[0]
                    print("Votre personnage est \(character.name ) et possede \(character.life) points de vie")
                    
                case 2:
                     validChoice = true
                    character = teamCharacters[1]
                      print("Votre personnage est \(character.name ) et possede \(character.life) points de vie")
                    
                    
                    
                case 3:
                     validChoice = true
                    character = teamCharacters[2]
                     print("Votre personnage est \(character.name ) et possede \(character.life) points de vie")
                    
                default :
                    validChoice = false
                    print("Recommencez")
                }
                
            }
         }while validChoice == false
    
        // If the choice is 1,2,3 return the select character and if the choice is not 1,2,3 return "recommencez"
    
        
        // we return the select character
        return character
        
    
        
    
}


}


