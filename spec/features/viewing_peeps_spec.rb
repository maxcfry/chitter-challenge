require 'pg'

feature 'Viewing peeps' do 
  scenario 'A user can see peeps' do 
    Chitterwall.create(url: 'An uninformed opinion')
    Chitterwall.create(url: 'Misinformation')
    Chitterwall.create(url: 'A controversial rant')

    visit '/chitter_wall'
  end
end