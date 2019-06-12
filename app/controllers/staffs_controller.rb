class StaffsController < ApplicationController
  def index
    @staffs = staff.all
  end

  def new
    @mission = Mission.find(params[:mission_id])
    @staff = staff.new
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @staff = current_user.staffs.new(staff_params)
    @staff.mission = @mission
    if @staff.save
      redirect_to staff_path(@staff)
    else
      @mission = Mission.new
      render :new
    end
  end

  def edit
    @staff = staff.find(param[:id])
    @user = current_user
  end

  def update
    @staff = staff.find(params[:id])
    @staff.update(staff_params)
  end

  def show
    @staff = staff.find(params[:id])
  end

  def destroy
  end

  private

  def staff_params
    params.require(:staff).permit(:category,
                                     :description,
                                     :picture,
                                     :worked_time_hourly_rate,
                                     :closed_time_hourly_rate,
                                     :mission_id)
  end
end
