class Pokemon
  attr_accessor :name, :type, :db

  @@all = []

  def initialize(name, type)
    @name = name
    @type = type
    @@all < self
  end

  def self.all
    @@all
  end

  def self.save(name, type, db)
    database_connection.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

end
