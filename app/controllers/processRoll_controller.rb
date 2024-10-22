class ProcessRollController < ApplicationController
  def home
    render({ :template => "layouts/home"})

  end

  def roll
    @number_of_dice = params[:numberofdice].to_i
    @number_of_sides = params[:numberofsides].to_i

    @results = Array.new(@number_of_dice) { rand(1..@number_of_sides) }
    render ({ :template => "layouts/rolled"})
  end
end
