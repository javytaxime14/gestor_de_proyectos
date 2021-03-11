class ProjectsController < ApplicationController
  def dashboard
    return @projects = Project.all unless params.has_key?(:s) && params[:s].present? 

    @projects = Project.search(params[:s]) 
    # if params[:s] == ''
    #   @projects = Project.all
    # elsif params[:s] == 'proposal'
    #   @projects = Project.search_proposal 
    # elsif params[:s] == 'in_progress'
    #   @projects = Project.search_in_progress 
    # elsif params[:s] == 'finished'
    #   @projects = Project.search_finished 
    # end
  end

  def new
    @Project = Project.create(name: params[:name], description: params[:description], start_on: params[:start_on], finish_on: params[:finish_on], status: params[:status])
  end

  def create
  end
end
