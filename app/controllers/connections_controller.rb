class ConnectionsController < ApplicationController
  def index
    @connections = Connection.all
    render json: @connections
  end

  def create
    @connection = Connection.new(connection_params)
    if @connection.save
      render json: @connection, status: :created
    else
      render json: @connection.errors.full_messages, status: :unprocessable_entity
    end
  end


  def delete
    this_connection.destroy
  end

  private

  def connection_params
    params.require(:connection).permit(:user_id, :connected_user_id)
  end


  def this_connection
    @connection = Connection.find(params[:id])
  end

end
