class IcosController < ApplicationController
  before_action :set_ico, only: [:show, :edit, :update, :destroy]

  # GET /icos
  # GET /icos.json
  def index
    @icos = Ico.all
  end

  # GET /icos/1
  # GET /icos/1.json
  def show
    @icos = Ico.all.order('created_at DESC')
    @ico = Ico.friendly.find(params[:id])
    @random_ico = Ico.where.not(id: @ico).order("RANDOM()").first
    @random_ico2 = Ico.where.not(id: @ico).order("RANDOM()").second
  end

  # GET /icos/new
  def new
    @ico = Ico.new
  end

  # GET /icos/1/edit
  def edit
  end

  # POST /icos
  # POST /icos.json
  def create
    @ico = Ico.new(ico_params)

    respond_to do |format|
      if @ico.save
        format.html { redirect_to @ico, notice: 'Ico was successfully created.' }
        format.json { render :show, status: :created, location: @ico }
      else
        format.html { render :new }
        format.json { render json: @ico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icos/1
  # PATCH/PUT /icos/1.json
  def update
    respond_to do |format|
      if @ico.update(ico_params)
        format.html { redirect_to @ico, notice: 'Ico was successfully updated.' }
        format.json { render :show, status: :ok, location: @ico }
      else
        format.html { render :edit }
        format.json { render json: @ico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icos/1
  # DELETE /icos/1.json
  def destroy
    @ico.destroy
    respond_to do |format|
      format.html { redirect_to icos_url, notice: 'Ico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ico
      @ico = Ico.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ico_params
      params.require(:ico).permit(:name, :description, :price, :launchdate, :country, :website, :goal, :logo, :tagline)
    end
end
