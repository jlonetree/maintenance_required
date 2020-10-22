class PaddleGamesController < ApplicationController
  before_action :set_paddle_game, only: [:show, :edit, :update, :destroy]

  # GET /paddle_games
  # GET /paddle_games.json
  def index
    @paddle_games = PaddleGame.all
  end

  # GET /paddle_games/1
  # GET /paddle_games/1.json
  def show
  end

  # GET /paddle_games/new
  def new
    @paddle_game = PaddleGame.new
  end

  # GET /paddle_games/1/edit
  def edit
  end

  # POST /paddle_games
  # POST /paddle_games.json
  def create
    @paddle_game = PaddleGame.new(paddle_game_params)

    respond_to do |format|
      if @paddle_game.save
        format.html { redirect_to @paddle_game, notice: 'Paddle game was successfully created.' }
        format.json { render :show, status: :created, location: @paddle_game }
      else
        format.html { render :new }
        format.json { render json: @paddle_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paddle_games/1
  # PATCH/PUT /paddle_games/1.json
  def update
    respond_to do |format|
      if @paddle_game.update(paddle_game_params)
        format.html { redirect_to @paddle_game, notice: 'Paddle game was successfully updated.' }
        format.json { render :show, status: :ok, location: @paddle_game }
      else
        format.html { render :edit }
        format.json { render json: @paddle_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paddle_games/1
  # DELETE /paddle_games/1.json
  def destroy
    @paddle_game.destroy
    respond_to do |format|
      format.html { redirect_to paddle_games_url, notice: 'Paddle game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paddle_game
      @paddle_game = PaddleGame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paddle_game_params
      params.fetch(:paddle_game, {})
    end
end
