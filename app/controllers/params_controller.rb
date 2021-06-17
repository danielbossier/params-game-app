class ParamsController < ApplicationController
  def name
    input_value = params["name"]
    if input_value[0].upcase == "A"
      render plain: "Hey, #{input_value} your name starts with the first letter of the alphabet."
    else
      render json: { name: "Your name is #{input_value}" }
    end
  end

  def number_game
    answer = 12
    input_value = params["number"].to_i
    if input_value > 12
      output_message = "That's too high!"
    elsif input_value < 12
      output_message = "That's too low!"
    else
      output_message = "12 is correct!"
    end
    render json: { message: output_message }
  end
end
