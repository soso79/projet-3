
// Les personnes qui jouent au jeu


class GamePlayers {
    var teamCharacters = [GameCharacters]()
    var playerNumber : Int
    init(number: Int) {
        self.playerNumber = number
        
    }
    //la fonction createTeam va inviter le joueur a choisir les personnages de son équipe
    func createTeam(){
        repeat {
            print("Joueur \(playerNumber) veuillez choisir un personnage parmis les types suivant\n 1.combattant 2.magicien 3.nain 4.colosse")
            let userchoice = readLine()
            if let choice = Int(userchoice!) {
                switch choice {
                case 1:
                    print("veuillez rentrer un nom pour votre personnage ")
                    let characterName = readLine()
                    if let character = characterName {
                        let combattant = Warrior(name: character)
                        combattant.weapon = Epee()
                        combattant.life = 100
                        teamCharacters.append(combattant)
                    }
                    
                case 2:
                    print("veuillez rentrer un nom pour votre personnage ")
                    let characterName = readLine()
                    if let character = characterName {
                        let combattant = Magician(name: character)
                        teamCharacters.append(combattant)
                        combattant.life = 95
                        combattant.weapon = Potion()
                    }
                    
                    
                    
                case 3:
                    print("veuillez rentrer un nom pour votre personnage ")
                    let characterName = readLine()
                    if let character = characterName {
                        let combattant = Midget(name: character)
                        teamCharacters.append(combattant)
                        combattant.life = 90
                        combattant.weapon = Hache()
                    }
                    
                    
                    
                case 4:
                    print("veuillez rentrer un nom pour votre personnage ")
                    let characterName = readLine()
                    if let character = characterName {
                        let combattant = Colossus(name: character)
                        teamCharacters.append(combattant)
                        combattant.life = 85
                        combattant.weapon = Marteau()
                        
                    }
                    
                    
                    
                    
                default:
                    print ("Recommencez")
                    
                    
                    
                }
                
                
            } else {
                print("je n ai pas compris")
            }
            
        }while teamCharacters.count < 3
        
    }
    
}
