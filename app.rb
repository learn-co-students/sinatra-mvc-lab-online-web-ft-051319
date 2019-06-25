require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @object = PigLatinizer.new #creating a new PigLatinizer object because initializing doesnt require any arguments
    @phrase = params[:user_phrase] #this is the instance variable that will be passed in as the #piglatinize argument
    erb :piglatinize
  end

end
