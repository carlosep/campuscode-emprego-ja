class JobsController < ApplicationController
  before_action :set_job, only: [:edit, :show, :update]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def show
  end

  def new
    @job = Job.new
  end

  def update
    if @job.update(job_params)
      redirect_to @job
    else
      render :edit
    end
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to @job
    else
      render :new
    end
  end

  def edit
    @job = Job.new
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def set_categories
    @categories = Category.all
  end

  def job_params
    params.require(:job)
          .permit(:title, :location, :category_id, :contract_id, :description, :featured,
                  :company_id)
  end
end
