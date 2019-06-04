class QuotationsController < ApplicationController
  def index
    @quotations = Quotation.all
  end

  def new
    @quotation = Quotation.new
    @opportunity = Opportunity.find(params[:opportunity_id])
  end

  def create
    @opportunity = Expertise.find(params[:opportunity_id])
    @quotation = current_user.quotations.build(quotation_params)
    @quotation.opportunity = @opportunity
    # @quotation.price = (@quotation.end_date - @quotation.starting_date) * @margin_rate

    if @quotation.save
      redirect_to quotation_path(@quotation)
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
                                      :strating_date,
                                      :end_date)
  end
end
