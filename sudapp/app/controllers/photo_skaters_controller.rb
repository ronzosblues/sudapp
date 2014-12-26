class PhotoSkatersController < ApplicationController
  before_action :set_photo_skater, only: [:show, :edit, :update, :destroy]

  # GET /photo_skaters
  # GET /photo_skaters.json
  def index
    inaccesible
    @photo_skaters = PhotoSkater.all
  end

  # GET /photo_skaters/1
  # GET /photo_skaters/1.json
  def show
  end

  # GET /photo_skaters/new
  def new
    admin_check
    @photo_skater = PhotoSkater.new
  end

  # GET /photo_skaters/1/edit
  def edit
    admin_check
  end

  # POST /photo_skaters
  # POST /photo_skaters.json
  def create
    @photo_skater = PhotoSkater.new(photo_skater_params)

    respond_to do |format|
      if @photo_skater.save
        format.html { redirect_to skater_path(:id => @photo_skater.skater_id), notice: 'La foto fue creada exitosamente.'  }
        format.json { render action: 'show', status: :created, location: @photo_skater }
      else
        format.html { render action: 'new' }
        format.json { render json: @photo_skater.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_skaters/1
  # PATCH/PUT /photo_skaters/1.json
  def update
    respond_to do |format|
      if @photo_skater.update(photo_skater_params)
        format.html { redirect_to skater_path(:id => @photo_skater.skater_id), notice: 'La foto fue editada exitosamente.'  }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @photo_skater.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_skaters/1
  # DELETE /photo_skaters/1.json
  def destroy
    @photo_skater.destroy
    respond_to do |format|
      format.html { redirect_to skater_path(:id => @photo_skater.skater_id) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_skater
      @photo_skater = PhotoSkater.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_skater_params
      params.require(:photo_skater).permit(:photo, :skater_id)
    end
end
