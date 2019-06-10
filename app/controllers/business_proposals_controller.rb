class BusinessProposalsController < ApplicationController
  before_action :set_opportunity, only: [:show, :edit, :update]

  layout :pdf, only: :memoire_light

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
  end

private

  def set_business_proposal
    @business_proposal = BusinessProposal.find(params[:business_proposal_id])
  end

  def business_proposal_params
    params.require(:business_proposal).permit(:quotation_id)
  end

  def memoire_light
    @user = current_user
    @opportunity = Opportunity.find(params[:opportunity_id])
    @client = Client.find(params[:client_id])
    @missions = Mission.where(quotation_id: @quotation_id)

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name"   # Excluding ".pdf" extension.
      end
    end
  end






end
