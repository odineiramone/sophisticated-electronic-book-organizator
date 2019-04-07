require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::Flash

  configure do
    set :sessions, true
    set :session_secret, ENV['SESSION_SECRET']
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end
end
