# frozen_string_literal: true

require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      bookmark_1 = Bookmark.create("http://www.makersacademy.com", "Makers Academy")
      bookmark_2 = Bookmark.create("http://www.destroyallsoftware.com", "Destroy")
      bookmark_3 = Bookmark.create("http://www.google.com", "Google")

      bookmarks = Bookmark.all

      expect(bookmarks).to include(bookmark_1)
    end
  end

  describe '.create' do
    it "adds a new bookmark" do
      bookmark_4 = Bookmark.create("http://www.makersacademy.com", "Makers Academy")
      expect(bookmark_4.url).to eq('http://www.makersacademy.com')
      expect(bookmark_4.title).to eq('Makers Academy')
    end
  end
end
