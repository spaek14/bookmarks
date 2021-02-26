# frozen_string_literal: true

require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      Bookmark.create("http://www.makersacademy.com", "Makers Academy")
      Bookmark.create("http://www.destroyallsoftware.com", "Destroy")
      Bookmark.create("http://www.google.com", "Google")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('Makers Academy')
      expect(bookmarks).to include('Destroy')
      expect(bookmarks).to include('Google')
    end
  end

  describe '.create' do
    it "adds a new bookmark" do
      Bookmark.create('url', 'title')
      expect(Bookmark.all).to ('url')
      expect(Bookmark.all).to ('title')
    end
  end
end
