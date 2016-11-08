class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params["NUMBER"].to_f
    @square = @number**2

    render("square.html.erb")
  end

  def square_root
    @number = params["NUMBER"].to_f.round(0)
    @sqrt = Math.sqrt(@number).round(2)
    render("square_root.html.erb")
  end

  def random
    @min = params["MIN"].to_i
    @max = params["MAX"].to_i
    @rand = rand(@min..@max)

    render("random.html.erb")
  end

  def payment
    render("payment.html.erb")
  end


end
