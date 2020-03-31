require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name/' do
    @reverse_name = params[:name].sort { |a, b| b <=> a }
  end
end