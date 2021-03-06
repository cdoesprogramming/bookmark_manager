feature 'testing adding bookmark' do
  # scenario "add bookmark" do
  #   visit '/bookmarks'
  #   expect(page).to have_field("url")
  #   expect(page).to have_selector(:link_or_button, "Add New Bookmark") 
  # end

  scenario 'add bookmark confirmation' do
    visit '/bookmarks'
    fill_in 'url',with:'https://instagram.com'
    fill_in('title', with: 'Instagram')
    click_button 'Add New Bookmark'
    expect(page).to have_link('Instagram', href: 'https://instagram.com')
  end
end 