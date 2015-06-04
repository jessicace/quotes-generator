class QuotesController < ApplicationController
  def index
    @random_quote = Quote.random.content
    render layout: false
  end
end
