require 'spec_helper'
require 'List'

feature 'Visit /bookmarks' do
  scenario 'has valid content' do
    visit("/bookmarks")
    expect(page).to have_content BookmarkManager::BOOKMARKS_SOURCE
  end
end
