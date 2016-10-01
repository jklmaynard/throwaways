class PoemsController < ApplicationController
  def index
    @poems = Poem.all
  end
  def show
    @poem = Poem.friendly.find(params[:id])
    @line = Line.new
  end
  def new
    @poem = Poem.new
  end
  def create
    @poem = Poem.create(poem_params)
    if @poem.save
      redirect_to poem_path(@poem)
    else
      redirect_to :back
    end
  end

  private
  def poem_params
    params.require(:poem).permit(:name)
  end
end
