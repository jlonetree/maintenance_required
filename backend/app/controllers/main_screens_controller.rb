class MainScreensController < ApplicationController
  before_action :set_main_screen, only: [:show, :edit, :update, :destroy]

  # GET /main_screens
  # GET /main_screens.json
  def index
    @main_screens = MainScreen.all
  end

  # GET /main_screens/1
  # GET /main_screens/1.json
  def show
  end

  # GET /main_screens/new
  def new
    @main_screen = MainScreen.new
  end

  # GET /main_screens/1/edit
  def edit
  end

  # POST /main_screens
  # POST /main_screens.json
  def create
    @main_screen = MainScreen.new(main_screen_params)

    respond_to do |format|
      if @main_screen.save
        format.html { redirect_to @main_screen, notice: 'Main screen was successfully created.' }
        format.json { render :show, status: :created, location: @main_screen }
      else
        format.html { render :new }
        format.json { render json: @main_screen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_screens/1
  # PATCH/PUT /main_screens/1.json
  def update
    respond_to do |format|
      if @main_screen.update(main_screen_params)
        format.html { redirect_to @main_screen, notice: 'Main screen was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_screen }
      else
        format.html { render :edit }
        format.json { render json: @main_screen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_screens/1
  # DELETE /main_screens/1.json
  def destroy
    @main_screen.destroy
    respond_to do |format|
      format.html { redirect_to main_screens_url, notice: 'Main screen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_screen
      @main_screen = MainScreen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def main_screen_params
      params.fetch(:main_screen, {})
    end
end
