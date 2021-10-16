feature 'Homepage sign up' do
  scenario 'user enters username and password to sign up' do
    visit('/')

    expect(page).to have_content("You've signed up to Chitter!")
  end
end

# feature 'Homepage sign up' do
#   scenario 'user enters username and password to sign up' do
#     visit('/') 
#     fill_in :username, with: 'example_user'
#     fill_in :password, with: 'example_password'
#     click_button 'Submit'

#     expect(page).to have_content(username: example_user)
#   end
# end