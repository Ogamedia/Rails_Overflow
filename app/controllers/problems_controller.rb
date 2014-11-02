class ProblemsController < ApplicationController
  def index
    @problem = Problem.all
  end

  def new
    @problem = Problem.new
  end

  def create
    @problem = Problem.new(problem_params)

      if @problem.save
      redirect_to @problem
      else
        render 'new'
        end
      end

  def list
    @problem = Problem.all
  end

  def show
    @problem = Problem.find(params[:id])
  end

def edit
    @problem = Problem.find(params[:id])
  end

  def confirm
    
  end
  def update
    @problem = Problem.find(params[:id])
    if @problem.update(problem_params)
      redirect_to @problem
    else
      render 'edit'
  end
  end
end



private
  def problem_params
    params.require(:problem). permit(:title, :text, :screenshot)
  end
