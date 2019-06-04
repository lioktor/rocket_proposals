class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
    @user = current_user
  end

  def create
    @client = current_user.clients.build(client_params)
    if @client_params.save
      redirect_to client_path(@client)
    else
      render :new
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    @client.update(client_params)
    redirect_to client_path(@client)
  end

  def show
    @client = Client.find(params[:id])
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
  end

  private

  def clients_params
    params.require(:clients).permit(:first_name,
                                    :last_name,
                                    :category,
                                    :function,
                                    :company_name,
                                    :email,
                                    :phone,
                                    :linkedin,
                                    :company_SIRET,
                                    :company_picture,
                                    :company_address,
                                    :activity_sector,
                                    :user_id)
  end
end
