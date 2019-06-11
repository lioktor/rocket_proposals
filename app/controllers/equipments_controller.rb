class EquipmentController < ApplicationController
  def index
    @equipments = equipment.all
  end

  def new
    @equipment = Equipment.new
    @quotation = Quotation.find(params[:quotation_id])
    @opportunity = Opportunity.find(params[:opportunity_id])
    @equipments = Equipment.all
    @equipment = @equipments.map do |equipment|
      equipment = equipment.category
    end
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @equipment = current_user.equipments.build(equipment_params)
    @equipment.mission = @mission
    if @equipment.save
      redirect_to equipment_path(@equipment)
    else
      @mission = Mission.new
      render :new
    end
  end

  def edit
    @equipment = equipment.find(param[:id])
    @user = current_user
  end

  def update
    @equipment = equipment.find(params[:id])
    @equipment.update(equipment_params)
  end

  def show
    @equipment = equipment.find(params[:id])
  end

  def destroy
  end

  private

  def equipment_params
    params.require(:equipment).permit(:category,
                                     :description,
                                     :cost,
                                     :picture,
                                     :mission_id)
  end
end
