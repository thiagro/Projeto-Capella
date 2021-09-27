class UniformesController < ApplicationController
  before_action :set_uniforme, only: %i[ show edit update destroy ]

  # GET /uniformes or /uniformes.json
  def index
    @uniformes = Uniforme.all
  end

  # GET /uniformes/1 or /uniformes/1.json
  def show
  end

  # GET /uniformes/new
  def new
    @uniforme = Uniforme.new
  end

  # GET /uniformes/1/edit
  def edit
  end

  # POST /uniformes or /uniformes.json
  def create
    @uniforme = Uniforme.new(uniforme_params)

    respond_to do |format|
      if @uniforme.save
        format.html { redirect_to @uniforme, notice: "Uniforme was successfully created." }
        format.json { render :show, status: :created, location: @uniforme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @uniforme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uniformes/1 or /uniformes/1.json
  def update
    respond_to do |format|
      if @uniforme.update(uniforme_params)
        format.html { redirect_to @uniforme, notice: "Uniforme was successfully updated." }
        format.json { render :show, status: :ok, location: @uniforme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @uniforme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uniformes/1 or /uniformes/1.json
  def destroy
    @uniforme.destroy
    respond_to do |format|
      format.html { redirect_to uniformes_url, notice: "Uniforme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uniforme
      @uniforme = Uniforme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def uniforme_params
      params.require(:uniforme).permit(:item, :tamanho, :quantidade, :validade)
    end
end
