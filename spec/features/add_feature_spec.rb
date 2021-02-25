feature 'Adding bookmarks' do
  scenario 'A user can add a bookmark' do

    visit('/bookmarks')

    click_button("add_bookmark")
    fill_in("add_link", with: "myurl.com")
    click_button("submit")

    expect(page).to have_content("myurl.com")

  end
end