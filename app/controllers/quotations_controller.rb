class QuotationsController < ApplicationController
  def index
    @quotations = Quotation.all
    @opportunity = Opportunity.find(params[:opportunity_id])
  end

  def new
    @quotation = Quotation.new
    @opportunity = Opportunity.find(params[:opportunity_id])
  end

  def create
    @opportunity = Opportunity.find(params[:opportunity_id])
    @quotation = Quotation.new(quotation_params)
    @quotation.opportunity = @opportunity
    if @quotation.save
      redirect_to new_opportunity_quotation_mission_path(@opportunity, @quotation)
    else
      @opportunity = Opportunity.new
      render :new
    end
  end

  def edit
   @quotation = Quotation.find(params[:id])
   @user = current_user
  end

  def update
    @quotation = Quotation.find(params[:id])
    @quotation.update(quotation_params)
  end

  def show
    @quotation = Quotation.find(params[:id])
    @opportunity = Opportunity.find(params[:opportunity_id]) if params[:opportunity_id].present?
  end

  def destroy
    @quotation = Quotation.find(params[:id])
    @quotation.destroy
    redirect_to opportunity_path
  end

  private

  def quotation_params
    params.require(:quotation).permit(:opportunity_id,
                                      :mission_id,
                                      :margin_rate,
                                      :selling_price,
                                      :starting_date,
                                      :end_date)
  end
end
