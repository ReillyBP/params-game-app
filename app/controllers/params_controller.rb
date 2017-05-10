class ParamsController < ApplicationController
  def query_params_method
    puts "$$$$$$$"
    puts params["name"]
    @message=params[:name].upcase
    if params[:name].starts_with?("a")
  @message = "Hey, your name starts with the first letter of the alphabet!"
  end

  @message3=params[:number]
  number = params[:number].to_i
  if number > 27 
    @message3 = "You guessed to high..."
  elsif number < 27 
    @message3 ="You guessed to low!"
  elsif number == 27 
    @message3="You guessed it - you rock!"
  end
  render "query_params.html.erb"
end
end
