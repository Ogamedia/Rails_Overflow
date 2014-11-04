class ProblemsController < ApplicationController
  def index
    @problem = Problem.all
    if params[:search]
      @problem = @problem.where("title LIKE ?", "%#{params[:search]}%")
    else
    end
  end

  def new
    @problem = Problem.new
  end

  def create
    @problem = Problem.new(problem_params)

    respond_to do |format|
      if @problem.save
        format.html { redirect_to problems_path, notice: 'Problem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @problem }
      else
        format.html { render action: 'new' }
        format.json { render json: @problem.errors, status: unprocessable_entity }
      end
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

  def destroy
    @problem = Problem.find(params[:id])
    @problem.destroy

    redirect_to problems_path
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
