class LinesController < ApplicationController
  def create
    @poem = Poem.find(params[:id])
    @line = @poem.lines.create(line_params)
  end

  private
  def line_params
    params.require(:line).permit(:line, :poem_id)
  end
end
