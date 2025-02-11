require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse 
  end

  get '/square/:number' do
    "#{params[:number].to_i**2}"
  end

  get '/say/:number/:phrase' do 
    num = params[:number].to_i
    phrase = params[:phrase]
    string = '"'
    while num > 0
      num -= 1
      string << phrase
    end
    string
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do # operation = word, so if word == add, add the 2 numbers
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if op == "add"
      "#{num2 + num1}"
    elsif op == "subtract"
      "#{num1 - num2}"
    elsif op == "multiply"
      "#{num1 * num2}"
    elsif op == "divide"
      "#{num1 / num2}"
    end  
  end 

end