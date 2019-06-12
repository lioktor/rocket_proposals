class MissionStaffsController < ApplicationController

  def new
    @mission_staff = MissionStaff.new
    @mission = Mission.find(params[:mission_id])
    @staffs = Staff.all
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @mission_staff = MissionStaff.new(mission_staff_params)
    @mission.staff_quantity = params[:mission_staff][:quantity]
    @mission.staff_planning = params[:mission_staff][:planning]
    @mission.save
    if @mission_staff.save
      redirect_to opportunity_quotation_mission_path(@mission.quotation.opportunity, @mission.quotation, @mission)
    else
      render :new
    end
  end

private

def mission_staff_params
  params.require(:mission_staff).permit(:mission_id, :staff_id, :planning, :quantity)
end

end
