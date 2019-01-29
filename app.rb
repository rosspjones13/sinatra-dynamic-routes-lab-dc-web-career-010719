require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    user_name = params[:name]
    "#{user_name.reverse!}"
  end

  get '/square/:number' do
    num = params[:number]
    "#{num.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    response = ""
    times = params[:number]
    sent = params[:phrase]
    times.to_i.times do
      response += sent
    end
    response
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    response = ""

    case params[:operation]
    when "add"
      response = (num1 + num2).to_s
    when "subtract"
      response = (num1 - num2).to_s
    when "divide"
      response = (num1 / num2).to_s
    when "multiply"
      response = (num1 * num2).to_s
    end
  end
end