require 'pg'

class Chitterwall
  def self.all 
    connection = PG.connect(dbname: 'chitter_manager')
    result = connection.exec("SELECT * FROM wall")
    result.map { |peep| peep['url'] }
  end
end