class ChinchillasController < ApplicationController
  before_action :set_chinchilla, only: [:show, :edit, :update, :destroy]

  # GET /chinchillas
  # GET /chinchillas.json
  def index
    @chinchillas = Chinchilla.all
  end

  # GET /chinchillas/1
  # GET /chinchillas/1.json
  def show
  end

  # GET /chinchillas/new
  def new
    @chinchilla = Chinchilla.new
  end

  # GET /chinchillas/1/edit
  def edit
  end

  # POST /chinchillas
  # POST /chinchillas.json
  def create
    @chinchilla = Chinchilla.new(chinchilla_params)

    respond_to do |format|
      if @chinchilla.save
        format.html { redirect_to @chinchilla, notice: 'Chinchilla was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chinchilla }
      else
        format.html { render action: 'new' }
        format.json { render json: @chinchilla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chinchillas/1
  # PATCH/PUT /chinchillas/1.json
  def update
    respond_to do |format|
      if @chinchilla.update(chinchilla_params)
        format.html { redirect_to @chinchilla, notice: 'Chinchilla was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chinchilla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chinchillas/1
  # DELETE /chinchillas/1.json
  def destroy
    @chinchilla.destroy
    respond_to do |format|
      format.html { redirect_to chinchillas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chinchilla
      @chinchilla = Chinchilla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chinchilla_params
      params[:chinchilla]
    end
end
