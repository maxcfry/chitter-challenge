feature 'Adding a new peep(post) to chitter' do
  scenario 'A user can add a post to Chitter Wall(Manager)' do
    visit('/chitter_wall/new')
    fill_in('url', with: 'Disinformation')
    click_button('Submit')

    expect(page).to have_content('Disinformation')
  end
end