require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/pig' do
    @text = params[:user_text]
    erb :pig
  end
end
