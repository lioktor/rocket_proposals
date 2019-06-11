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
    @business_proposal = current_user.business_proposal.build(business_proposal_params)

    if @business_proposal.save
      redirect_to business_proposal_path(@business_proposal)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @business_proposal.update(business_proposal_params)
  end

  def show
    @business_proposal = BusinessProposal.find(params[:id])
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
