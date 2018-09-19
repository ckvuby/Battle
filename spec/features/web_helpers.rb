def sign_in_and_play
  visit('/')
  fill_in('player1_name', with: "Vu")
  fill_in('player2_name', with: "Shweta")
  click_button "Submit"
end