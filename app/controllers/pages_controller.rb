class PagesController < ApplicationController
  def homepage
  end

  def search
    @flights = Flight.all
  end
end
