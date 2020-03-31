require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i ** 2
    @squared_number.to_s
  end

  get '/say/:number/:phrase' do
    number = (params[:number].to_i)
    phrase = ""
    numberTimes.do 
      phrase += params[:phrase]
    end
    phrase
  end
end