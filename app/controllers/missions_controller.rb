class MissionsController < ApplicationController
  def index
    @missions = Mission.all
  end

  def new
    @mission = Mission.new
    @quotation = Quotation.find(params[:quotation_id])
    @opportunity = Opportunity.find(params[:opportunity_id])
  end

  def create
    @quotation = Quotation.find(params[:quotation_id])
    @opportunity = Opportunity.find(params[:opportunity_id])
    @mission = Mission.new(mission_params)
    @mission.quotation = @quotation

    if @mission.save
      redirect_to opportunity_quotation_mission_path(@opportunity, @quotation, @mission)
    else
      @quotation = Quotation.new
      render :new
    end
  end

  def edit
    @mission = Mission.find(param[:id])
    @user = current_user
  end

  def update
    @mission = Mission.find(params[:id])
    @quotation = Quotation.find(params[:quotation_id])
    @opportunity = Opportunity.find(params[:opportunity_id])
    @mission.update(mission_params)
  end

  def show
    @mission = Mission.find(params[:id])

  end

  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy
    @quotation = Quotation.find(params[:quotation_id])
    @opportunity = Opportunity.find(params[:opportunity_id])
    redirect_to opportunity_quotation_path(@opportunity, @quotation)
  end

  private

  def mission_params
    params.require(:mission).permit(:description,
                                    :staff_quantity,
                                    :staff_planning,
                                    :training_quantity,
                                    :equipment_quantity)
  end
end
