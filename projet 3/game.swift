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
        
       var fightingPlayer = players[0]
       var defendingPlayer = players[1]
        while players.count > 1{
        var target = GameCharacters(name:"")
        let combattant = fightingPlayer.selectCharacter()
        if let magicien = combattant as? Magician{
            print("Le personnage est un magicien")
            let action = magicien.selectAction()
            if action == 1{
                print("le magicien va attaquer")
               // on va demander au joueur de selectionner un personage de l equipe adverse a attaquer //
                
            
                
                target = defendingPlayer.selectCharacter()
                magicien.attack(ennemy: target)
                print("\(combattant.name) a attaqué \(target.name)")
                print(" il reste \(target.life) points de vie")
                
                
        }else if action == 2{
                print(" le magicien va soigner")
                // on va demander au joueur de selectionner un persoonage de son equipe a soigner //
                target = fightingPlayer.selectCharacter()
                magicien.health(teamates: target)
                print("\(combattant.name) a soigné \(target.name)")
                
            
                
        }else {
                target = defendingPlayer.selectCharacter()
                combattant.attack(ennemy: target)
                print("\(combattant.name) a attaqué \(target.name)")
                print("il reste \(target.life) points de vie ")
            }
            
        }else {
            target = defendingPlayer.selectCharacter()
            combattant.attack(ennemy: target)
            print("\(combattant.name) a attaqué \(target.name)")
            print("il reste \(target.life) points de vie ")
            
        }
        
        if (target.life <= 0){
            print("le vainqueur est \(combattant.name)")
            let index = defendingPlayer.teamCharacters.index(where: {$0 === target})
            defendingPlayer.teamCharacters.remove(at: index!)
            
            
        }else if (combattant.life <= 0){
            print("le vainqueur est \(target.name)")
            let index = fightingPlayer.teamCharacters.index(where: {$0 === combattant})
            fightingPlayer.teamCharacters.remove(at: index!)
            
            
        }
          swap( &fightingPlayer,&defendingPlayer)
            
        }
        
        }
    
     func endGame(){
        
        
        
        
    
        }

    

        }

