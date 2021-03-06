class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    messages = Message.all
    render json: messages
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
  end

  def create
    # byebug
      # message = Message.new(:message message_params["message"], :username_id message_params["username_id"], :message_board_id message_params["message_board_id"])
      message = Message.new(message_params)
      message.save
      render json: message
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    message = Message.find(params[:id])
    message.update(message_params)
    render json: message
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    message = Message.find(params[:id])
    message.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      message = Message.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.require(:message).permit(:text, :username_id, :message_board_id)
    end
end
