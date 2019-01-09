class Pokemon
  @@all = []

  def initialize(name, type)
    @name = name
    @type = type
    @@all < self
  end 

  def self.all 
    @@all
  end 

  def self.save(name, type, database_connection)
    database_connection.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end 
  
end
