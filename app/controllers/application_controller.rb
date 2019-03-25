require './config/environment'

class ApplicationController < Sinatra::Base
  configure do
    set :sessions, true
    set :session_secret, ENV['SESSION_SECRET']
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  def flash
    session[:flash_messages] ||= {}
  end

  helpers do
    include Rack::Utils
  end
end
