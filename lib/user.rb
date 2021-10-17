require 'bcrypt'
require 'database_connection'

class User
  def self.create(username:, password:)
    encrypted_password = BCrypt::Password.create(password)

    result = DatabaseConnection.query(
      "INSERT INTO users (username, password) VALUES($1, $2) RETURNING id, username;",
      [username, encrypted_password]
    )

    User.new(id: result[0]['id'], username: result[0]['username'])
  end

  attr_reader :id, :username

  def initialize(id:, username:)
    @id = id 
    @username = username
  end

  def self.find(id)
    return nil unless id
    result = DatabaseConnection.query(
      "SELECT * FROM users WHERE id = $1",
      [id]
    )
    User.new(result[0]['id'], result[0]['username'])
  end
  
end



  