class MyExamplesController < ApplicationController
  def seefortune
    n = rand(1..4)
    #letter = rand(65..90).chr
    if n == 1
      render json: {message: "Read daily"}
    elsif n ==2
      render json: {message: "Be kind"}
    else
      render json: {message: "Smile please"}
    end
  end
  
  def lotto
    num =[]
    6.times do
      n= rand(1..60)
      num << n
    end
    render json: {message: "The winning numbers are #{num}"}
  end
  

end
