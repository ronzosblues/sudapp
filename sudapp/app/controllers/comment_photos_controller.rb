class CommentPhotosController < ApplicationController
  before_action :set_comment_photo, only: [:show, :edit, :update, :destroy]

  # GET /comment_photos
  # GET /comment_photos.json
  def index
    
    @comment_photos = CommentPhoto.all
  end

  # GET /comment_photos/1
  # GET /comment_photos/1.json
  def show
    inaccesible
    @comment_photo = CommentPhoto.new
  end


  # GET /comment_photos/new
  def new
    @comment_photo = CommentPhoto.new
  end

  # GET /comment_photos/1/edit
  def edit
    inaccesible
  end

  # POST /comment_photos
  # POST /comment_photos.json
  def create
    @comment_photo = CommentPhoto.new(comment_photo_params)

    respond_to do |format|
      if @comment_photo.save
        @id = @comment_photo.photo.id.to_s
        @ruta = "/photos/"+@id
        format.html { redirect_to @ruta, notice: 'Ha comentado exitosamente.' }
        format.json { render action: 'show', status: :created, location: @comment_photo }
      else
        format.html { render action: 'new' }
        format.json { render json: @comment_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_photos/1
  # PATCH/PUT /comment_photos/1.json
  def update
    respond_to do |format|
      if @comment_photo.update(comment_photo_params)
        format.html { redirect_to @comment_photo, notice: 'Comment photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comment_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_photos/1
  # DELETE /comment_photos/1.json
  def destroy
    @comment_photo.destroy
    respond_to do |format|
      format.html { redirect_to comment_photos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_photo
      @comment_photo = CommentPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_photo_params
      params.require(:comment_photo).permit(:content, :photo_id, :user_id)
    end

end
