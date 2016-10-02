class PoemsController < ApplicationController
  def index
    @poems = Poem.all
  end
  def show
    @poem = Poem.friendly.find(params[:id])
    @line = Line.new
    @lines = @poem.lines.sort {|a,b| a.line_number <=> b.line_number}
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
  def edit
    @poem = Poem.find {|s| s.slug == params[:id]}
    @lines = @poem.lines.sort {|a,b| a.line_number <=> b.line_number}
  end

  private
  def poem_params
    params.require(:poem).permit(:name, :sonnet_number)
  end
end
