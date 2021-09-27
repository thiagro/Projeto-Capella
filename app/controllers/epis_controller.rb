class EpisController < ApplicationController
  before_action :set_epi, only: %i[ show edit update destroy ]

  # GET /epis or /epis.json
  def index
    @epis = Epi.all
  end

  # GET /epis/1 or /epis/1.json
  def show
  end

  # GET /epis/new
  def new
    @epi = Epi.new
  end

  # GET /epis/1/edit
  def edit
  end

  # POST /epis or /epis.json
  def create
    @epi = Epi.new(epi_params)

    respond_to do |format|
      if @epi.save
        format.html { redirect_to @epi, notice: "Epi was successfully created." }
        format.json { render :show, status: :created, location: @epi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @epi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epis/1 or /epis/1.json
  def update
    respond_to do |format|
      if @epi.update(epi_params)
        format.html { redirect_to @epi, notice: "Epi was successfully updated." }
        format.json { render :show, status: :ok, location: @epi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @epi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epis/1 or /epis/1.json
  def destroy
    @epi.destroy
    respond_to do |format|
      format.html { redirect_to epis_url, notice: "Epi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epi
      @epi = Epi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def epi_params
      params.require(:epi).permit(:item, :quantidade, :validade, :obs)
    end
end
