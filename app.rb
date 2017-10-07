require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/pig' do
    @text = PigLatinize.new(params[:user_text])
    @pig = PigLatinize.new.to_pig_latin(params[:user_phrase])
    erb :pig
  end
end
