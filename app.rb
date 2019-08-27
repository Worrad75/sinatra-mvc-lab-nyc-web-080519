require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        latinizer = PigLatinizer.new
        input = params[:user_phrase]
        @latin = latinizer.piglatinize(input)
        erb :results
    end


end