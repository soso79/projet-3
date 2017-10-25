
// Les personnes qui jouent au jeu


class GamePlayers {
    var teamCharacters = [GameCharacters]()
    var playerNumber : Int
    init(number: Int) {
        self.playerNumber = number
        
    }
    //la fonction createTeam va inviter le joueur a choisir les personnages de son équipe
    func createTeam(players:[GamePlayers]){
        repeat {
            print("Joueur \(playerNumber) veuillez choisir un personnage parmis les types suivant\n 1.combattant 2.magicien 3.nain 4.colosse")
            let userchoice = readLine()
            if let choice = Int(userchoice!) {
                switch choice {
                case 1:
                    print("veuillez rentrer un nom pour votre personnage ")
                    let characterName = readLine()
                    if let character = characterName {
                        if !checkNameUsed(personnageName: character,players: players){
                            let combattant = Warrior(name: character)
                            combattant.weapon = Epee()
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
                        combattant.life = 95
                        combattant.weapon = Potion()
                    }
                        
                    }
                    
                    
                case 3:
                    print("veuillez rentrer un nom pour votre personnage ")
                    let characterName = readLine()
                    if let character = characterName {
                        if !checkNameUsed(personnageName: character,players: players){
                        let combattant = Midget(name: character)
                        teamCharacters.append(combattant)
                        combattant.life = 90
                        combattant.weapon = Hache()
                    }
                        
                    }
                    
                    
                case 4:
                    print("veuillez rentrer un nom pour votre personnage ")
                    let characterName = readLine()
                    if let character = characterName {
                        if !checkNameUsed(personnageName: character,players: players){
                        let combattant = Colossus(name: character)
                        teamCharacters.append(combattant)
                        combattant.life = 85
                        combattant.weapon = Marteau()
                        
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
    
    func play(player: GamePlayers) {
        // selection du personnage de l equipe //
        
        
        
        // Choisir un personnage de l'équipe adverse à attaquer ou un personnage de sa propre équipe à soigner dans le cas du Mage.//
        
        
        
    } // permet de selectionner un personnage dans la liste team
    func selectCharacter()-> GameCharacters{
        var characterIndex = 0
        var character = GameCharacters(name: "")
        
        print("selectionnez un personnage")
        for character in teamCharacters{
            characterIndex += 1
            print("\(characterIndex)- \(character.name)")
        }
        // on va demander a l utilisateur de rentrer un numéro de personnage de la liste
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
        
        
    
        // on va analyser la réponse donnée : si c est 1 2 3 on renvoi le personnage selectionné sinon on demande une nouvelle fois a l utilisateur de choisir un nombre entre 1 2 3
    
        

        
        
        
        
            
        
        
        
        // on renvoi le character selctionné
        return character
        
    
        
    
}


}


