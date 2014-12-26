class PhotoPostsController < ApplicationController
  before_action :set_photo_post, only: [:show, :edit, :update, :destroy]

  # GET /photo_posts
  # GET /photo_posts.json
  def index
    inaccesible
    @photo_posts = PhotoPost.all
  end

  # GET /photo_posts/1
  # GET /photo_posts/1.json
  def show
  end

  # GET /photo_posts/new
  def new
    admin_check
    @photo_post = PhotoPost.new
  end

  # GET /photo_posts/1/edit
  def edit
    admin_check
  end

  # POST /photo_posts
  # POST /photo_posts.json
  def create
    @photo_post = PhotoPost.new(photo_post_params)

    respond_to do |format|
      if @photo_post.save
        format.html { redirect_to post_path(:id => @photo_post.post_id), notice: 'La foto fue creada exitosamente.' }
        format.json { render action: 'show', status: :created, location: @photo_post }
      else
        format.html { render action: 'new' }
        format.json { render json: @photo_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_posts/1
  # PATCH/PUT /photo_posts/1.json
  def update
    respond_to do |format|
      if @photo_post.update(photo_post_params)
        format.html { redirect_to post_path(:id => @photo_post.post_id), notice: 'La foto fue editada exitosamente.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @photo_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_posts/1
  # DELETE /photo_posts/1.json
  def destroy
    @photo_post.destroy
    respond_to do |format|
      format.html { redirect_to post_path(:id => @photo_post.post_id)}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_post
      @photo_post = PhotoPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_post_params
      params.require(:photo_post).permit(:photo, :post_id)
    end
end
