class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    project_params = params.require(:project).permit(:name)
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_path, notice: "Project was successfully created"
    else
      render :new
    end
    
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    project_params = params.require(:project).permit(:name)
    @project.update(project_params)
    redirect_to projects_path, notice: "Project was successfully updated"
  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to projects_path, notice: "Project was successfully deleted"
  end

  private

    def project_params
      params.require(:task).permit(:name)
    end

end
