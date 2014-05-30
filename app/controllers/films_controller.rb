class FilmsController < ApplicationController
  def new
  end
  def show
	@film = Film.find(params[:id])
 def index
  	@films = Film.all 
  	@foo = "bar"
  end	
  end
end
