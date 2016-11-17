class PagesController < ApplicationController
  def fortune_method
    @be_fortunate = "Don't gamble"
    @be_unfortunate = "Spend hours in a casino, awe the casino a marker, get a complimetary offers"
    render 'fortune.html.erb'

  end
end
