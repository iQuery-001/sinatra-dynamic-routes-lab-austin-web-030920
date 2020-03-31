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
    number.times do 
      phrase += params[:phrase]
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:num1/:num2' do
    operator = params[:operation]
    if operator == "add"
      params[:num1].to_i + params[num2].to_i
    end

    if operator == "subtract"
      params[:num1].to_i - params[num2].to_i
    end

    if operator == "multiply"
      params[:num1].to_i * params[num2].to_i
    end

    if operator == "divide"
      params[:num1].to_i / params[num2].to_i
    end
  end
end