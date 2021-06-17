class ParamsController < ApplicationController
  def name
    input_value = params["name"]
    if input_value[0].upcase == "A"
      render plain: "Hey, #{input_value} your name starts with the first letter of the alphabet."
    else
      render json: { name: "Your name is #{input_value}" }
    end
  end
end
