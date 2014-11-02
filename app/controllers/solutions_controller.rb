class SolutionsController < ApplicationController
  def create
    @problem = Problem.find(params[:problem_id])
    @solution = @problem.solutions.create(solution_params)
    redirect_to problem_path(@problem)
  end

  private
  def solution_params
    params.require(:solution).permit(:text,:upvote,:downvote,:problem_id)
  end
end
