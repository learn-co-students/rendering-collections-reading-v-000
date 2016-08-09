class AuthorsController < ApplicationController

  def new
    @author = Author.new
  end


  def show
    @author = Author.find(params[:id])
  end

  private
  def set_author
    @author = Author.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def author_params
    params.require(:author).permit(:name, :hometown)
  end
end
