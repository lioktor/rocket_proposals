class BusinessProposalsController < ApplicationController
  before_action :set_business_proposal, only: [:show, :edit, :update]

  layout :pdf, only: :PDF

  def index
    @business_proposals = BusinessProposal.all
  end

  def new
    @user = current_user
    @business_proposal = BusinessProposal.new
  end

  def create
    @quotation = Quotation.find(params[:quotation_id])
    @business_proposal = BusinessProposal.new(quotation_id: params[:quotation_id])
    if @business_proposal.save
      redirect_to quotation_business_proposal_path(@quotation, @business_proposal)
    else
      redirect_to opportunity_quotation_path(@quotation.opportunity, @quotation)
    end
  end

  def edit
  end

  def update
    @business_proposal.update(business_proposal_params)
  end

  def show

  end

  def PDF
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name" # Excluding ".pdf" extension.
      end
    end
  end

private

  def set_business_proposal
    @business_proposal = BusinessProposal.find(params[:id])
  end

  def business_proposal_params
    params.require(:business_proposal).permit(:quotation_id)
  end


end
