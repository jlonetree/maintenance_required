class ScoreBoardsController < ApplicationController
  before_action :set_score_board, only: [:show, :edit, :update, :destroy]

  # GET /score_boards
  # GET /score_boards.json
  def index
    @score_boards = ScoreBoard.all
  end

  # GET /score_boards/1
  # GET /score_boards/1.json
  def show
  end

  # GET /score_boards/new
  def new
    @score_board = ScoreBoard.new
  end

  # GET /score_boards/1/edit
  def edit
  end

  # POST /score_boards
  # POST /score_boards.json
  def create
    @score_board = ScoreBoard.new(score_board_params)

    respond_to do |format|
      if @score_board.save
        format.html { redirect_to @score_board, notice: 'Score board was successfully created.' }
        format.json { render :show, status: :created, location: @score_board }
      else
        format.html { render :new }
        format.json { render json: @score_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /score_boards/1
  # PATCH/PUT /score_boards/1.json
  def update
    respond_to do |format|
      if @score_board.update(score_board_params)
        format.html { redirect_to @score_board, notice: 'Score board was successfully updated.' }
        format.json { render :show, status: :ok, location: @score_board }
      else
        format.html { render :edit }
        format.json { render json: @score_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /score_boards/1
  # DELETE /score_boards/1.json
  def destroy
    @score_board.destroy
    respond_to do |format|
      format.html { redirect_to score_boards_url, notice: 'Score board was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score_board
      @score_board = ScoreBoard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def score_board_params
      params.require(:score_board).permit(:user_id, :score_id)
    end
end
