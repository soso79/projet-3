import Foundation

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
       var counter = 0
       var fightingPlayer = players[0]
       var defendingPlayer = players[1]
        while players.count > 1{
            if fightingPlayer === players[0]{
                counter += 1
            }
            let openChestProbability = arc4random_uniform(100)
            var target = GameCharacters(name:"")
            let combattant = fightingPlayer.selectCharacter()
            // the chest appear
            if openChestProbability < 99 {
                print ( """
                           ***********************************************************************
                           ***********************************************************************
                                       " VOUS AVEZ DECOUVERT UN COFFRE SECRET",
                           ***********************************************************************
                           ***********************************************************************
                       """)
                // Character open the chest
                openChest(character: combattant)
                
            }
            if let magicien = combattant as? Magician{
            print("Le personnage est un magicien")
             let action = magicien.selectAction()
             if action == 1{
                print("le magicien va attaquer")
               // Choose an opponent to attack //
                
            
                
                target = defendingPlayer.selectCharacter()
                magicien.attack(ennemy: target)
                print("\(combattant.name) a attaqué \(target.name)")
                print(" il reste \(target.life) points de vie")
                
                
        }else if action == 2{
                print(" le magicien va soigner")
                // Choose your teamate to treat //
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
        if(defendingPlayer.teamCharacters.count == 0){
                print("le joueur \(fightingPlayer.playerNumber) a gagné")
                let indexPlayer = players.index(where: {$0 === defendingPlayer})
                players.remove(at: indexPlayer!);
                print("Vous avez gagné en \(counter) tours")
        }
            
        }
            // swap value player[0] & player[1] between fightingPlayer  and defendingPlayer \\
          swap( &fightingPlayer,&defendingPlayer)
            
        }
        
        }
    
    func openChest(character : GameCharacters){
        switch character {
        case is Warrior:
            print("\(character.name) a trouvé une épée magique")
            character.weapon = Weapon(name : "épée magique",dammages: 35)
        case is Magician:
            print("\(character.name) a trouvé une potion magique")
            character.weapon = Weapon(name : "potion magique",dammages: 28)
        case is Colossus:
            print("\(character.name) a trouvé un marteau surpuissant")
            character.weapon = Weapon(name : "marteau surpuissant",dammages: 40)
        case is Midget:
            print("\(character.name) a trouvé une hache destructrice")
            character.weapon = Weapon(name : "hache destructrice",dammages: 50)
        default: break
            
        }
        }
     

        }

