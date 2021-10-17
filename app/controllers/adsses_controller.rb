class AdssesController < ApplicationController
  before_action :set_adss, only: %i[ show edit update destroy ]

  # GET /adsses or /adsses.json
  def index
    @adsses = Adss.all
  end

  # GET /adsses/1 or /adsses/1.json
  def show
  end

  # GET /adsses/new
  def new
    @adss = Adss.new
  end

  # GET /adsses/1/edit
  def edit
  end

  # POST /adsses or /adsses.json
  def create
    @adss = Adss.new(adss_params)

    respond_to do |format|
      if @adss.save
        format.html { redirect_to @adss }
        format.json { render :show, status: :created, location: @adss }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @adss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adsses/1 or /adsses/1.json
  def update
    respond_to do |format|
      if @adss.update(adss_params)
        format.html { redirect_to @adss}
        format.json { render :show, status: :ok, location: @adss }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @adss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adsses/1 or /adsses/1.json
  def destroy
    @adss.destroy
    respond_to do |format|
      format.html { redirect_to adsses_url  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adss
      @adss = Adss.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adss_params
      params.require(:adss).permit(:company_name, :advertisement, :location, :phone_no, :description, :user_id)
    end
end
