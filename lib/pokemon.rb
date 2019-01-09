class Pokemon
  attr_accessor :name, :type, :db, :id

  @@all = []

  def initialize(id:, name:, type:, db:)
    @name = name
    @type = type
    @id = id
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id_num, db)
    info = db.execute("SELECT * FROM pokemon WHERE id = ?", id_num).first
    Pokemon.new(info, db)
  end

end
