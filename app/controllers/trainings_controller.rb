class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def new
    @mission = Mission.find(params[:mission_id])
    @training = Training.new
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @training = current_user.trainings.build(training_params)
    @training.mission = @mission
    if @training.save
      redirect_to training_path(@training)
    else
      @mission = Mission.new
      render :new  #"users/show"
    end
  end

  def edit
    @training = Training.find(param[:id])
    @user = current_user
  end

  def update
    @training = Training.find(params[:id])
    @training.update(training_params)
  end

  def show
    @training = Training.find(params[:id])
  end

  def destroy
  end

  private

  def training_params
    params.require(:training).permit(:category,
                                     :description,
                                     :icon,
                                     :educational_cost,
                                     :duration,
                                     :mission_id)
  end
end
