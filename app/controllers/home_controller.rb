class HomeController < ApplicationController
  def index
    @quote_of_day = Quote.find(Time.now.day.to_i)
    @categories = Category.all
  end
end
