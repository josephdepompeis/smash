class GroundMovesController < ApplicationController
  before_action :set_ground_move, only: [:show, :edit, :update, :destroy]

  # GET /ground_moves
  # GET /ground_moves.json
  def index
    @ground_moves = GroundMove.all
  end

  # GET /ground_moves/1
  # GET /ground_moves/1.json
  def show
  end

  # GET /ground_moves/new
  def new
    @ground_move = GroundMove.new
  end

  # GET /ground_moves/1/edit
  def edit
  end

  # POST /ground_moves
  # POST /ground_moves.json
  def create
    @ground_move = GroundMove.new(ground_move_params)

    respond_to do |format|
      if @ground_move.save
        format.html { redirect_to @ground_move, notice: 'Ground move was successfully created.' }
        format.json { render :show, status: :created, location: @ground_move }
      else
        format.html { render :new }
        format.json { render json: @ground_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ground_moves/1
  # PATCH/PUT /ground_moves/1.json
  def update
    respond_to do |format|
      if @ground_move.update(ground_move_params)
        format.html { redirect_to @ground_move, notice: 'Ground move was successfully updated.' }
        format.json { render :show, status: :ok, location: @ground_move }
      else
        format.html { render :edit }
        format.json { render json: @ground_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ground_moves/1
  # DELETE /ground_moves/1.json
  def destroy
    @ground_move.destroy
    respond_to do |format|
      format.html { redirect_to ground_moves_url, notice: 'Ground move was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ground_move
      @ground_move = GroundMove.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ground_move_params
      params.require(:ground_move).permit(:character_id, :name, :hitbox_active_start, :hotbox_active_end, :first_actionable_frame, :base_damage, :angle, :base_knockback, :weight_based_knockback, :knock, :back_growth, :notes, :patch, :variation_of)
    end
end
