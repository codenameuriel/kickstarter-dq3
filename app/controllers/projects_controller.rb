class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  
  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end
  
  def create
    @project = Project.create(project_params)

    if @project.save 
      flash[:notice] = "Project successfully created"
      redirect_to @project
    else
      flash[:errors] = @project.errors.full_messages
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
   
    if @project.update(project_params)
      redirect_to @project
    else 
      flash[:errors] = @project.errors.full_messages
      render edit_project_path(@project)  
    end 
  end
  
  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private
  
  def project_params
    params.require(:project).permit(:title, :summary)
  end
  
  def find_project
    @project = Project.find(params[:id])
  end
end