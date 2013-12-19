require 'sinatra/base'
require './lib/birthday.rb'

module BirthdayDee
  class App < Sinatra::Application
    
    get '/' do
      erb :index  
    end

    post '/results' do
    @month = params["month"].to_i 
    @day = params["day"].to_i
      if @month == Date.today.month && @day == Date.today.day
          erb :birthday
      else 
          erb :not_your_bday
      end
    end

  end
end


