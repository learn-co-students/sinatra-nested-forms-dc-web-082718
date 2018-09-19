require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :"pirates/home"
    end
    get '/pirates' do
      @pirates = Pirate.all
      erb :index
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do

      # {"pirate"=>
      # {"name"=>"Ian",
      #  "weight"=>"165",
      #  "height"=>"95",
      #  "ships"=>
      #
      #   [{"name"=>"Titanic", "type"=>"Steam Liner", "booty"=>"Silver"},
      #    {"name"=>"Carpathia", "type"=>"Rescue Ship", "booty"=>"Inner Tubes"}]}}
      #     binding.pry
      name = params[:pirate][:name]
      weight = params[:pirate][:weight]
      height = params[:pirate][:height]
      @pirate = Pirate.new(name, weight, height)

      @ships = params[:pirate][:ships]
      # params[:pirate][:ships][].each do |ship|
      #   ship = Ship.new(ship[:name], ship[:type], ship[:booty])
      # end
      erb :"pirates/show"


    end

  end
end
