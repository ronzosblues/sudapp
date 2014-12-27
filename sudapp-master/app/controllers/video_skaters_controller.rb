class VideoSkatersController < ApplicationController
  before_action :set_video_skater, only: [:show, :edit, :update, :destroy]

  # GET /video_skaters
  # GET /video_skaters.json
  def index
    inaccesible
    @video_skaters = VideoSkater.all
  end

  # GET /video_skaters/1
  # GET /video_skaters/1.json
  def show
    
  end

  # GET /video_skaters/new
  def new
    admin_check
    @video_skater = VideoSkater.new
  end

  # GET /video_skaters/1/edit
  def edit
    admin_check
  end

  # POST /video_skaters
  # POST /video_skaters.json
  def create
    @video_skater = VideoSkater.new(video_skater_params)

    respond_to do |format|
      if @video_skater.save
        format.html { redirect_to skater_path(@video_skater.skater_id), notice: 'El video fue creado exitosamente.'  }
        format.json { render action: 'show', status: :created, location: @video_skater }
      else
        format.html { render action: 'new' }
        format.json { render json: @video_skater.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_skaters/1
  # PATCH/PUT /video_skaters/1.json
  def update
    respond_to do |format|
      if @video_skater.update(video_skater_params)
        format.html { redirect_to skater_path(@video_skater.skater_id), notice: 'El video fue editado exitosamente.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @video_skater.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_skaters/1
  # DELETE /video_skaters/1.json
  def destroy
    @video_skater.destroy
    respond_to do |format|
      format.html { redirect_to skater_path(@video_skater.skater_id) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_skater
      @video_skater = VideoSkater.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_skater_params
      params.require(:video_skater).permit(:video_skater_title, :video_skater_url, :skater_id)
    end
end
