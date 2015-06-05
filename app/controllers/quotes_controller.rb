class QuotesController < ApplicationController
  def index
    @random_quote = scope.random.content
    render layout: false
  end

  private
  def scope
    if params[:category_id]
      Category.find(params[:category_id]).quotes
    else
      Quote
    end
  end
end
