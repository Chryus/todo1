require 'sinatra/base'
require './lib/compliment'

module Birthday
  class App < Sinatra::Application
    enable :sessions
    get '/' do

  end
end


