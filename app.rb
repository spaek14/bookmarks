# frozen_string_literal: true
require './lib/bookmark'
require 'sinatra/base'
require 'pg'
class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @list = Bookmark.all
    erb :bookmarks
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  post '/bookmarks' do
    url = params[:add_link]
    title = params[:add_title]
    Bookmark.create(url, title)
    redirect '/bookmarks'
  end
  p Bookmark.create("url", "title").first
  run! if app_file == $PROGRAM_NAME
end
