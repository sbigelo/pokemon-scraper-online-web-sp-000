class Pokemon
attr_accessor :id, :name, :type, :db


  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end



  def self.save(name, type, db)
  db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

<<<<<<< HEAD
  def self.find(id_num, db)
    sql = db.execute("SELECT * FROM pokemon WHERE id = ?", id_num).flatten
    Pokemon.new(id: sql[0], name: sql[1], type: sql[2], db: db)
=======
  def self.find
    sql = "SELECT * FROM pokemon WHERE id = ?"
    result = db.execute(sql, id)[0]
    Pokemon(result[0], result[1])
>>>>>>> 831322c15b981155cf4e870028d63c4829154a98
  end

end
