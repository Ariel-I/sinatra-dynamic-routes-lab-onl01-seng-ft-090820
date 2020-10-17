require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
    @user_name = params[:name].reverse
    "#{@user_name}"
  end
    
  get "/square/:number" do 
    @number = params[:number].to_i**2
      @number.to_s
  end 
  
  get "/say/:number/:phrase" do 
    string = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "  "
  end 
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 
  
  get "/:operation/:number1/:number2" do 
    @operation = params[:number1], params[:number2]
    ""
  end 
  
end