require 'pry'
require './environment'

module FormsLab
  class App < Sinatra::Base
    configure do
      set :views, 'views'
    end

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do

      @pirate_name = params[:pirate][:name]
      @pirate_height = params[:pirate][:height]
      @pirate_weight = params[:pirate][:weight]

      @ship1_name = params[:pirate][:ships][0][:name]
      @ship1_type = params[:pirate][:ships][0][:type]
      @ship1_booty = params[:pirate][:ships][0][:booty]

      @ship2_name = params[:pirate][:ships][1][:name]
      @ship2_type = params[:pirate][:ships][1][:type]
      @ship2_booty = params[:pirate][:ships][1][:booty]

      @pirate = Pirate.new(name: @pirate_name, height: @pirate_height, weight: @pirate_weight)
      @ship1 = Ship.new(name: @ship1_name, type: @ship1_type, booty: @ship1_booty)
      @ship2 = Ship.new(name: @ship2_name, type: @ship2_type, booty: @ship2_booty)

      erb :'pirates/show'
    end

  end
end
