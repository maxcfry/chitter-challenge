feature 'Adding messages (peep)' do
  scenario 'Add a message to chitter' do
    visit('/') 
    expect(page).to have_content "Chitter"
  end
end