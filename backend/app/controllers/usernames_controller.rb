class UsernamesController < ApplicationController
  before_action :set_username, only: [:show, :edit, :update, :destroy]
  # skip_before_action :verify_authenticity_token

  # GET /usernames
  # GET /usernames.json
  def index
    usernames = Username.all
    render json: usernames
  end

  # GET /usernames/1
  # GET /usernames/1.json
  def show
  end

  # GET /usernames/new
  # def new
  #   username = Username.new
  # end

  # GET /usernames/1/edit
  # def edit
  # end

  # POST /usernames
  # POST /usernames.json
  def create
    # byebug
    username = Username.new(username_params)
    username.save
    render json: username
  end

  # PATCH/PUT /usernames/1
  # PATCH/PUT /usernames/1.json
  def update
    username = Username.new(username_params)
    username.update
    render json: username
  end

  # DELETE /usernames/1
  # DELETE /usernames/1.json
  def destroy
    username.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_username
      username = Username.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def username_params
      params.require(:username).permit(:name)
    end
end
