class Potion: Weapon {
      var magic : Int
    
      init(name: String , magic: Int , dammages: Int) {
        self.magic = magic
        super.init(name : name ,dammages: dammages)
         
      }
}
