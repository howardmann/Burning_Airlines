class PagesController < ApplicationController
  def homepage
  end

  def search

    @user = User.find_by(:name => "Bob")
    if params[:search_origin] || params[:search_destination]
      @flights = Flight.search(params[:search_origin], params[:search_destination])
    else
      @flights = Flight.all.order("date desc")
      
    end
  end
end
