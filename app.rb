# frozen_string_literal: true
require './lib/bookmark'
require 'sinatra/base'
require 'pg'
class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    p ENV
    @list = Bookmark.all
    erb :bookmarks
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  post '/bookmarks' do
    url = params[:add_link]
    connection = PG.connect(dbname: 'bookmark_manager')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}');")
    redirect '/bookmarks'
  end

  get '/delete_bookmark' do
    # erb :delete_bookmark
    # @link = params[:delete_link]
    # connection = PG.connect(dbname: 'bookmark_manager')
    #   connection.exec("DELETE FROM bookmarks WHEN url = #{@link}")
    # redirect '/bookmarks'

    "HELLO"
  end

  run! if app_file == $PROGRAM_NAME
end
