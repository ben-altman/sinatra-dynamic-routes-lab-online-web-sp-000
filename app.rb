require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}."
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @num
    
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    @operation = params[:operation]
 
    @sum = @n1 + @n2
    @dif = @n1 - @n2
    @product = @n1 * @n2
    @quotient = @n1 / @n2

    case @operation
      when "add"
      "#{@sum}"
      when "subtract"
      "#{@dif}"
      when "multiply"
      "#{@product}"
      when "divide"
      "#{@quotient}"
    end
  end
end
