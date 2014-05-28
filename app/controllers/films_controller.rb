class FilmsController < ApplicationController
  def new
  end
  def show
	@film = Film.find(params[:id])
  end
end
