require_relative 'database_connection'

class Chitterwall
  def self.all 
    result = DatabaseConnection.query("SELECT * FROM wall")
    result.map do |peep| 
      Chitterwall.new(
        url: peep['url'],
        username: peep['username'],
        id: peep['id']
      )
    end
  end

  def self.find(id:)
  end

  def self.create(url:, username:)
    result = DatabaseConnection.query(
      "INSERT INTO wall (url, username) VALUES($1, $2) RETURNING id, username, url;", [url, username]
    )
    Chitterwall.new(id: result[0]['id'], username: result[0]['username'], url: result[0]['url'])
  end
end