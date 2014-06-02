class FilmsController < ApplicationController
  def new
    @film = Film.new
  end
  def show
	@film = Film.find(params[:id])
  end
 def index
  	@films = Film.all 
  	@foo = "bar"
  end
  def create
    @film = Film.new(user_params)
      if @film.still1 == "gimli_42"
    respond_to do |format|
      if @film.save
        format.html { redirect_to @film, notice: 'Film was successfully created.' }
        format.json { render action: 'show', status: :created, location: @film }
      else
        format.html { render action: 'new' }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
    end	
  end
  def user_params
      params.require(:film).permit(:name, :link, :url, :writeup, :credits, :still1)
    end
end
