class Potion: Weapon {
      var magic : Int
    
      init(name: String , magic: Int , degats: Int) {
        self.magic = magic
        super.init(name : name ,degats: degats)
         
      }
}
