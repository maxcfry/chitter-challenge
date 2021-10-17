require 'chitter_wall'

describe Chitterwall do 
  describe '.all' do 
    it 'returns a list of peeps(tweets)' do
      connection = PG.connect(dbname: 'chitter_manager_test')

      connection.exec("INSERT INTO wall (url) VALUES ('An uninformed opinion');")
      connection.exec("INSERT INTO wall (url) VALUES ('Misinformation');")
      connection.exec("INSERT INTO wall (url) VALUES ('A controversial rant');")

      wall = Chitterwall.all

      expect(wall).to include "An uninformed opinion"
      expect(wall).to include "A controversial rant"
      expect(wall).to include "Misinformation" 
    end
  end

  describe '.create' do 
    it 'creates a new peep (tweet)' do
      Chitterwall.create(url: 'Disinformation')

      expect(Chitterwall.all).to include 'Disinformation'
    end
  end
end
