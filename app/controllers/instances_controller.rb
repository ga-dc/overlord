class InstancesController < ApplicationController

  def index
    @instances = Instance.all
    render json: @instances
  end

  def new
  end

  def create
    @instance = Instance.new(instance_params)

    @instance.save
    redirect_to @instance
  end

  def show
      @instance = Instance.find(params[:id])
    end


private
  def instance_params
      params.require(:instance).permit(:course_name, :course_abbreviation, :core_id, :start_date, :end_date, :producer)
    end


end
