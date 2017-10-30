class Game {
    var players = [ GamePlayers]()
    func welcome(){
        print("Bienvenue dans le monde de sega ! enjoy your game!")
    }
    func initializeGame(){
        for i in 0...1 {
            let player = GamePlayers(number:i + 1)
            players.append(player)
            player.createTeam(players:players)
            
            
        }
        
        
    }
    func fight(){
        
        
        
        let combattant = players[0].selectCharacter()
        if let magicien = combattant as? Magician{
            print("Le personnage est un magicien")
            let action = magicien.selectAction()
            if action == 1{
                print("le magicien va attaquer")
               // on va demander au joueur de selectionner un personage de l equipe adverse a attaquer //
                
            
                
                let ennemy = players[1].selectCharacter()
                magicien.attack(ennemy: ennemy)
                print("\(combattant.name) a attaqué \(ennemy.name)")
                print(" il reste \(ennemy.life) points de vie")
                
                
                }else if action == 2{
                print(" le magicien va soigner")
                // on va demander au joueur de selectionner un persoonage de son equipe a soigner //
                let teamates = players[0].selectCharacter()
                magicien.health(teamates: teamates)
                print("\(combattant.name) a soigné \(teamates.name)")
                
                
                //le magicien va soigner le personnage //
                
                
                
                
            }
            
            
            
            
            
            
            
            
            
        }else{
            
            
            
            // on va demander au joueur de selectionner un persoonage de l equipe adverse a attaquer //
            
            if let nain = combattant as? Midget{
                print("Le personnage est un nain")
                let action = nain.selectAction()
                if action == 1{
                    print("le nain va attaquer")
                    // on va demander au joueur de selectionner un personage de l equipe adverse a attaquer //
                    
                    
                    
                    let ennemy = players[1].selectCharacter()
                    nain.attack(ennemy: ennemy)
                    print("\(combattant.name) a attaqué \(ennemy.name)")
                    print(" il reste \(ennemy.life) points de vie")
           
        }
        
        
    }
    
        }
            
        if let guerrier = combattant as? Warrior{
            print("Le personnage est un guerrier")
            let action = guerrier.selectAction()
            if action == 1{
                print("le guerrier va attaquer")
                // on va demander au joueur de selectionner un personage de l equipe adverse a attaquer //
                
                
                
                let ennemy = players[1].selectCharacter()
                guerrier.attack(ennemy: ennemy)
                print("\(combattant.name) a attaqué \(ennemy.name)")
                print(" il reste \(ennemy.life) points de vie")
                
            }
            
            
        }

        if let colosse = combattant as? Colossus{
            print("Le personnage est un colosse")
            let action = colosse.selectAction()
            if action == 1{
                print("le colosse va attaquer")
                // on va demander au joueur de selectionner un personage de l equipe adverse a attaquer //
                
                print("selectionnez un personnage a attaquer")
                
                let ennemy = players[1].selectCharacter()
                colosse.attack(ennemy: ennemy)
                print("\(combattant.name) a attaqué \(ennemy.name)")
                print(" il reste \(ennemy.life) points de vie")
                
            }
            
            
        }
        
    
        
    
    
    }

}
