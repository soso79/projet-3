class Game {
    var players = [ GamePlayers]()
    func welcome(){
        print("Bienvenue dans le monde de sega ! enjoy your game!")
    }
    func initializeGame(){
        for i in 0...1 {
            let player = GamePlayers(number:i + 1)
            player.createTeam()
            players.append(player)
            
        }
        
    }
    
}

