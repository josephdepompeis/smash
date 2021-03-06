class GrabsController < ApplicationController
  before_action :set_grab, only: [:show, :edit, :update, :destroy]

  # GET /grabs
  # GET /grabs.json
  def index
    @grabs = Grab.all
  end

  # GET /grabs/1
  # GET /grabs/1.json
  def show
  end

  # GET /grabs/new
  def new
    @grab = Grab.new
  end

  # GET /grabs/1/edit
  def edit
  end

  # POST /grabs
  # POST /grabs.json
  def create
    @grab = Grab.new(grab_params)

    respond_to do |format|
      if @grab.save
        format.html { redirect_to @grab, notice: 'Grab was successfully created.' }
        format.json { render :show, status: :created, location: @grab }
      else
        format.html { render :new }
        format.json { render json: @grab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grabs/1
  # PATCH/PUT /grabs/1.json
  def update
    respond_to do |format|
      if @grab.update(grab_params)
        format.html { redirect_to @grab, notice: 'Grab was successfully updated.' }
        format.json { render :show, status: :ok, location: @grab }
      else
        format.html { render :edit }
        format.json { render json: @grab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grabs/1
  # DELETE /grabs/1.json
  def destroy
    @grab.destroy
    respond_to do |format|
      format.html { redirect_to grabs_url, notice: 'Grab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grab
      @grab = Grab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grab_params
      params.require(:grab).permit(:character_id, :name, :hitbox_active_start, :hitbox_active_end, :first_actionable_frame, :variation_of)
    end
end
