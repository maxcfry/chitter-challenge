require 'pg'
feature 'Viewing peeps' do 
  feature 'visiting the homepage' do 
    scenario 'the page title is visible' do 
      visit('/')

      expect(page).to have_content 'Welcome to Chitter!'
    end
  end

  feature 'Viewing peeps' do 
    scenario 'A user can see peeps' do 
      Chitterwall.create(url: 'An uninformed opinion')
      Chitterwall.create(url: 'A controversial rant')
      Chitterwall.create(url: 'Misinformation')

      visit '/chitter_wall'
    end
  end
end