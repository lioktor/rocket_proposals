class MissionEquipmentsController < ApplicationController
  def new
    @mission_equipment = MissionEquipment.new
    @mission = Mission.find(params[:mission_id])
    @equipments = Equipment.all
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @mission_equipment = MissionEquipment.new(mission_equipment_params)
    if @mission_equipment.save
      redirect_to opportunity_quotation_mission_path(@mission.quotation.opportunity, @mission.quotation, @mission)
    else
      render :new
    end
  end
  private

def mission_equipment_params
  params.require(:mission_equipment).permit(:mission_id, :equipment_id, :quantity)
end

end
