require 'pg'

class Chitterwall
  def self.all 
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_manager_test')
    else 
      connection = PG.connect(dbname: 'chitter_manager')
    end

    connection = PG.connect(dbname: 'chitter_manager')
    result = connection.exec("SELECT * FROM wall")
    result.map { |peep| peep['url'] }
  end
end