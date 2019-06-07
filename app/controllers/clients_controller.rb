class ClientsController < ApplicationController
  def index
    @user = current_user
    if params[:query].present?
      @clients = Client.where("company_name ILIKE ?", "%#{params[:query]}%")
    else
      @clients = Client..where.not(latitude: nil, longitude: nil)
      @markers = @clients.map do |client|
        {
          lat: client.latitude,
          lng: client.longitude
        }
      end
    end
  end

  def new
    @client = Client.new
    @user = current_user
  end

  def create
    @user = current_user
    @client = current_user.clients.build(client_params)
    if @client.save
      redirect_to client_path(@client)
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @client = Client.find(params[:id])
  end

  def update
    @user = current_user
    @client = Client.find(params[:id])
    @client.update(client_params)
    redirect_to client_path(@client)
  end

  def show
    @user = current_user
    @client = Client.find(params[:id])
  end

  def destroy
    @user = current_user
    @client = Client.find(params[:id])
    @client.destroy
  end

  private

  def client_params
    params.require(:client).permit(:first_name,
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
