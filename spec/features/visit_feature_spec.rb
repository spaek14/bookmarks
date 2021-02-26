feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create("http://www.makersacademy.com", "Makers Academy")
    Bookmark.create("http://www.destroyallsoftware.com", "Destroy")
    Bookmark.create("http://www.google.com", "Google")

    visit('/bookmarks')

    expect(page).to have_link('Makers Academy', href: "http://www.makersacademy.com")
    expect(page).to have_link('Destroy', href: "http://www.destroyallsoftware.com")
    expect(page).to have_link('Google', href: "http://www.google.com")
  end
end
