class DustBathsController < ApplicationController
  before_action :set_dust_bath, only: [:show, :edit, :update, :destroy]

  # GET /dust_baths
  # GET /dust_baths.json
  def index
    @dust_baths = DustBath.all
  end

  # GET /dust_baths/1
  # GET /dust_baths/1.json
  def show
  end

  # GET /dust_baths/new
  def new
    @dust_bath = DustBath.new
  end

  # GET /dust_baths/1/edit
  def edit
  end

  # POST /dust_baths
  # POST /dust_baths.json
  def create
    @dust_bath = DustBath.new(dust_bath_params)

    respond_to do |format|
      if @dust_bath.save
        format.html { redirect_to @dust_bath, notice: 'Dust bath was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dust_bath }
      else
        format.html { render action: 'new' }
        format.json { render json: @dust_bath.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dust_baths/1
  # PATCH/PUT /dust_baths/1.json
  def update
    respond_to do |format|
      if @dust_bath.update(dust_bath_params)
        format.html { redirect_to @dust_bath, notice: 'Dust bath was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dust_bath.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dust_baths/1
  # DELETE /dust_baths/1.json
  def destroy
    @dust_bath.destroy
    respond_to do |format|
      format.html { redirect_to dust_baths_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dust_bath
      @dust_bath = DustBath.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dust_bath_params
      params[:dust_bath]
    end
end
