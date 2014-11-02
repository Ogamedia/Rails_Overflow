class ProblemsController < ApplicationController
  def index
    @problem = Problem.all
  end

  def new
    @problem = Problem.new
  end

  def create
    @problem = Problem.new(problem_params)

@problem.save
redirect_to @problem
  end

  def list
    @problem = Problem.all
  end

  def show
    @problem = Problem.find(params[:id])
  end

  def confirm
    
  end
end
private
def problem_params
  params.require(:problem). permit(:title, :text, :screenshot)
end

