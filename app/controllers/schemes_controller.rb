class SchemesController < ApplicationController
  before_action :find_idea

  def index
  end

  def new
    @scheme = Scheme.new
  end

  def create
    @scheme = @idea.schemes.new(schemes_params)
    if @scheme.save
      redirect_to idea_scheme_path(@idea, @scheme)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def schemes_params
    params.require(:scheme).permit(:background_color, :text_color, :font_type, :idea_id)
  end

  def find_idea
    @idea = Idea.find(params[:idea_id])
  end
end
