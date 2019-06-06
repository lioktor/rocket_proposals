class OpportunitiesController < ApplicationController
  # before_action :set_opportunity, only: [ :show, :edit, :update, :create, :new]

  def index
    @opportunities = Opportunity.all
  end

  def new
    @client = Client.find(params[:client_id])
    @opportunity = Opportunity.new
  end

  def create
    @client = Client.find(params[:client_id])
    @opportunity = current_user.opportunities.build(opportunity_params)
    @opportunity.client = @client
    if @opportunity.save
      redirect_to myopportunities_client_opportunities_path
    else
      render :new
    end
  end

  def myopportunities
    @user = current_user
    @myopportunities = Opportunity.where(user_id: @user.id)
  end

  def edit
  end

  def update
    @opportunity.update(opportunity_params)
  end

  def show
  end

private

  # def set_opportunity
  #   @opportunity = Opportunity.find(params[:opportunity_id])
  # end

  def opportunity_params
    params.require(:opportunity).permit(:name, :description, :question_1, :question_2, :question_3,
                                        :user_id, :client_id)
  end
end
