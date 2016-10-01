class LinesController < ApplicationController
  def create
    @poem = Poem.find {|s| s.slug == params[:poem_id]}
    @line = @poem.lines.create(line_params)
    if @line.save
      redirect_to poem_path(@line.poem)
    else
      redirect_to 'back'
    end
  end

  private
  def line_params
    params.require(:line).permit(:line, :poem_id, :stanza_number, :line_number)
  end
end
