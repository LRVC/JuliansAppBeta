class DashboardController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def destroy
    @idea.destroy
    redirect_to root_path, notice: "That was a bad idea anyway. Good call."
  end
end
