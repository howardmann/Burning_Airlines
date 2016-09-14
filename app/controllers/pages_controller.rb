class PagesController < ApplicationController
  def homepage
  end

  def search
    @user = User.find_by(:name => "Bob")
    @flights = Flight.all
  end
end
