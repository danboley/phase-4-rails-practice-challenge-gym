class ClientsController < ApplicationController
  def show
    render json: find_client, status: :ok
  end

  def index
    render json: Client.all, status: :ok
  end

  def update
    find_client.update!(params.permit(:name, :age))
    render json: find_client, status: :accepted
  end

  private

  def find_client
    Client.find(params[:id])
  end
end
