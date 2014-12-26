class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index
    inaccesible
    @photos = Photo.all
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @comment_photo = CommentPhoto.new
    @allphotos = params[:allphotos].to_i

    if @allphotos == 0
      @comments = CommentPhoto.all.last(7).sort { |a,b| b.created_at <=> a.created_at }
    else
      @comments = CommentPhoto.find(:all).sort { |a,b| b.created_at <=> a.created_at }
    end


    





  end

  # GET /photos/new
  def new
    admin_check
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit
    admin_check
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'La foto fue creada exitosamente.' }
        format.json { render action: 'show', status: :created, location: @photo }
      else
        format.html { render action: 'new' }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: 'La foto fue editada exitosamente.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to :controller => "/albums", :action => "show", :id => @photo.album.id }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:album_id, :photo_title, :photo)
    end
end
