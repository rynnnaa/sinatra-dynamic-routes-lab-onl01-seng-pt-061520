require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end
  
  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end
  
  get '/say/:number' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @num}"
  end
end