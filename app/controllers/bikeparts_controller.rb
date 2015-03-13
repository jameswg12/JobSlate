class BikepartsController < ApplicationController
  before_action :set_bikepart, only: [:show, :edit, :update, :destroy]

  # GET /bikeparts
  # GET /bikeparts.json
  def index
    @bikeparts = Bikepart.all
  end

  # GET /bikeparts/1
  # GET /bikeparts/1.json
  def show
  end

  # GET /bikeparts/new
  def new
    @bikepart = Bikepart.new
  end

  # GET /bikeparts/1/edit
  def edit
  end

  # POST /bikeparts
  # POST /bikeparts.json
  def create
    @bikepart = Bikepart.new(bikepart_params)

    respond_to do |format|
      if @bikepart.save
        format.html { redirect_to @bikepart, notice: 'Bikepart was successfully created.' }
        format.json { render :show, status: :created, location: @bikepart }
      else
        format.html { render :new }
        format.json { render json: @bikepart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bikeparts/1
  # PATCH/PUT /bikeparts/1.json
  def update
    respond_to do |format|
      if @bikepart.update(bikepart_params)
        format.html { redirect_to @bikepart, notice: 'Bikepart was successfully updated.' }
        format.json { render :show, status: :ok, location: @bikepart }
      else
        format.html { render :edit }
        format.json { render json: @bikepart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bikeparts/1
  # DELETE /bikeparts/1.json
  def destroy
    @bikepart.destroy
    respond_to do |format|
      format.html { redirect_to bikeparts_url, notice: 'Bikepart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bikepart
      @bikepart = Bikepart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bikepart_params
      params.require(:bikepart).permit(:product_name, :description, :image_url)
    end
end
