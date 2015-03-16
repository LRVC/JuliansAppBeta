class IdeasController < ApplicationController
  before_action :find_idea, only: [:show, :edit, :update, :destroy]

  def index
    @ideas = Idea.all
  end

  def new
    @idea = Idea.new
  end

  def create
     @idea = Idea.new(ideas_params)
     if @idea.save
       redirect_to root_path, notice: "You're idea was saved bro."
     else
       render :new
     end
  end

  def show
  end

  def edit
  end

  def update
    if @idea.update(ideas_params)
      redirect_to root_path, notice: "Change that shit up. Got it."
    else
      render :edit
    end
  end

  def destroy
    @idea.destroy
    redirect_to root_path, notice: "We killed it with fire for you."
  end

  private

  def ideas_params
    params.require(:idea).permit(:description)
  end

  def find_idea
    @idea = Idea.find(params[:id])
  end
end
