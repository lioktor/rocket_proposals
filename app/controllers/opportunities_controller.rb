class OpportunitiesController < ApplicationController
  before_action :set_opportunity, only: [:show, :edit, :update]

  def index
    @opportunities = Opportunity.all
  end

  def new
    @user = current_user
    @opportunity = Opportunity.new
  end

  def create
    @opportunity = current_user.opportunities.build(opportunity_params)

    if @opportunity.save
      redirect_to opportunity_path(@opportunity)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @opportunity.update(opportunity_params)
  end

  def show
  end

private

  def set_opportunity
    @opportunity = Opportunity.find(params[:opportunity_id])
  end

  def opportunity_params
    params.require(:opportunity).permit(:name, :description, :question_1, :question_2, :question_3,
                                        :user_id, :client_id)
  end
end
