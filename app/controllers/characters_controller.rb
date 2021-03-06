class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]
  after_action :set_access_control_headers
  skip_before_action :verify_authenticity_token





  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
  end

  # GET /characters/new
  def new
    @character = Character.new
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params

      params.require(:character).permit(:name, :weight, :weight_rank, :run_speed, :run_speed_rank, :walk_speed, :walk_speed_rank, :air_speed, :air_speed_rank, :fall_speed, :fall_speed_rank, :fast_fall_speed, :fast_fall_speed_rank, :air_acceleration, :gravity, :sh_air_time, :max_jump, :wall_jump, :wall_cling, :crawl, :tether, :jump_sqaut, :soft_landing_lag, :hard_landing_lag, :fh_air_time)
    end

    def set_access_control_headers
      # headers['Access-Control-Allow-Origin'] = "*"
      # headers['Access-Control-Request-Method'] = %w{GET POST OPTIONS}.join(",")
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'





    end



end
