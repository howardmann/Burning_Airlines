class PagesController < ApplicationController
  def homepage
  end

  def search
    @flights = Flight.all.order("date desc")
  end
end
