class MissionTrainingsController < ApplicationController
  def new
    @mission_training = MissionTraining.new
    @mission = Mission.find(params[:mission_id])
    @trainings = Training.all
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @mission_training = MissionTraining.new(mission_training_params)
    if @mission_training.save
      redirect_to opportunity_quotation_mission_path(@mission.quotation.opportunity, @mission.quotation, @mission)
    else
      render :new
    end
  end

  private

def mission_training_params
  params.require(:mission_training).permit(:mission_id, :training_id, :quantity)
end

end
