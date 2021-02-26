feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create("http://www.makersacademy.com", "Makers Academy")
    Bookmark.create("http://www.destroyallsoftware.com", "Destroy")
    Bookmark.create("http://www.google.com", "Google")

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "Makers Academy"
    expect(page).to have_content "Destroy"
    expect(page).to have_content "Google"
  end
end
