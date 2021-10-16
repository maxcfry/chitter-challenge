require 'pg'

feature 'Viewing peeps' do 
  scenario 'A user can see peeps' do 
    connection = PG.connect(dbname: 'chitter_manager_test')

    connection.exec("INSERT INTO wall (url) VALUES ('An uninformed opinion');")
    connection.exec("INSERT INTO wall (url) VALUES ('Misinformation');")
    connection.exec("INSERT INTO wall (url) VALUES ('A controversial rant');")

    visit('/chitter_wall')

    expect(page).to have_content 'An uninformed opinion'
    expect(page).to have_content 'Misinformation'
    expect(page).to have_content 'A controversial rant'
  end
end