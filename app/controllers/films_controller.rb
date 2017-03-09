class FilmsController < ApplicationController
  before_action :find_film, only: [:show]

  # GET /films
  def index
    @films = Film.order(:title).page params[:page]

    render json: {films: @films.map(&:to_h)}
  end

  # GET /films/1
  def show
    render json: {film: @film.to_h}
  end

  private
    def find_film
      @film = Film.find(params[:id])
    end

    def film_params
      params.require(:film).permit(:title, :description, :url_slug, :year)
    end
end
