require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do

      erb :new
    end


    post '/pirates' do
      
      @name = params[:name]
      @height = params[:height]
      @weight = params[:weight]

      Pirate.new(params[:name], params[:height], params[:weight])
      
      params[:ship].each do |ship|
        Ship.new(ship[:name], ship[:type], ship[:attribute])
      end

      # binding.pry

      erb :show
    end



    # code other routes/actions here

  end
end
