class PoemsController < ApplicationController

  def index
    @poems = Poem.all
  end

  def show
    @poem = Poem.friendly.find(params[:id])
  end

end
