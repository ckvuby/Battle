feature 'update screen with players names' do
  scenario 'Expects players to be able fill there names in form and see those names after submit' do
    visit('/')
    
    fill_in('player1_name', with: "Vu")
    fill_in('player2_name', with: "Shweta")
    click_button "Submit"
    expect(page).to have_content('Vu vs Shweta')
  end
end