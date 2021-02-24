# frozen_string_literal: true

require 'sinatra/base'
require './lib/List'
class BookmarkManager < Sinatra::Base
  BOOKMARKS_SOURCE = 'bookmarks'

  get '/bookmarks' do
    @list = List.new(BOOKMARKS_SOURCE)
    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
