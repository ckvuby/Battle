# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our Names and seeing them

feature 'Update screen with players names' do
  scenario 'Expects players to be able fill there names in form and see those names after submit' do
    visit('/')
    fill_in('player1_name', with: "Vu")
    fill_in('player2_name', with: "Shweta")
    click_button "Submit"
    expect(page).to have_content('Vu vs Shweta')
  end
end

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points

feature 'So that player 1 can check player 2 HP' do 
  scenario 'Expects player 2 to have a HP displayed on screen' do
    visit('/')
    fill_in('player1_name', with: "Vu")
    fill_in('player2_name', with: "Shweta")
    click_button "Submit"
    expect(page).to have_content('Shweta: 100HP')
  end
end
