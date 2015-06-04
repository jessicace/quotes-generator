class QuotesController < ApplicationController
  def index
    @random_quote = Quote.sample
    render layout: false
  end
end
