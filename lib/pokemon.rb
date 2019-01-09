class Pokemon
  attr_accessor :name, :type, :db, :id

  @@all = []

  def initialize(id:, name:, type:, db:)
    @name = name
    @type = type
    @id = id
    @db = db
    @@all << self
  end

  def self.all
    @@all
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

end
