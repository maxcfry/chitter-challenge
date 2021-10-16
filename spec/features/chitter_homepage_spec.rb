feature 'Visiting homepage' do
  scenario 'Seeing Chitter displayed' do
    visit('/') 
    expect(page).to have_content "Chitter"
  end
end