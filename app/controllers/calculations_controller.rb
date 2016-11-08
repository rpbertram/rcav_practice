class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params["NUMBER"].to_i
    @square = @number**2

    render("square.html.erb")
  end

  def square_root
    render("square_root.html.erb")
  end

  def random
    render("random.html.erb")
  end

  def payment
    render("payment.html.erb")
  end


end
