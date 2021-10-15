require 'chitter_wall'

describe Chitterwall do 
  describe '.all' do 
    it 'returns all peeps(tweets)' do
      wall = Chitterwall.all

      expect(wall).to include("An uninformed opinion")
      expect(wall).to include("A controversial rant")
      expect(wall).to include("Misinformation")
    end
  end
end