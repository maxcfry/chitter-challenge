require 'pg'

class Chitterwall
  def self.all 
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_manager_test')
    else 
      connection = PG.connect(dbname: 'chitter_manager')
    end
    result = connection.exec("SELECT * FROM wall")
    result.map { |peep| peep['url'] }
  end

  def self.create(url:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_manager_test')
    else 
      connection = PG.connect(dbname: 'chitter_manager')
    end

    connection.exec("INSERT INTO wall (url) VALUES('#{url}')")
  end
end
