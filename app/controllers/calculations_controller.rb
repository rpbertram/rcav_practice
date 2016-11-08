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
    @rate = params["INTEREST_RATE"].to_f
    @years = params["NUMBER_OF_YEARS"].to_i
    @principal_value = params["PRINCIPAL_VALUE"].to_i

    @annrate = @rate/100
    @morate = @annrate/1200
    @term = (@years * 12)
    @principal = @principal_value

    @numerator = @principal * @morate * ((1+@morate)**@term)
    @denominator = (1+@morate)**@term - 1
    @payment = (@numerator / @denominator).round(2)

    render("payment.html.erb")
  end


end
