class VideoPostsController < ApplicationController
  before_action :set_video_post, only: [:show, :edit, :update, :destroy]

  # GET /video_posts
  # GET /video_posts.json
  def index
    inaccesible
    @video_posts = VideoPost.all
  end

  # GET /video_posts/1
  # GET /video_posts/1.json
  def show
  end

  # GET /video_posts/new
  def new
    admin_check
    @video_post = VideoPost.new
  end

  # GET /video_posts/1/edit
  def edit
    admin_check
  end

  # POST /video_posts
  # POST /video_posts.json
  def create
    @video_post = VideoPost.new(video_post_params)

    respond_to do |format|
      if @video_post.save
        format.html { redirect_to post_path(@video_post.post_id), notice: 'El video fue creado exitosamente.' }
        format.json { render action: 'show', status: :created, location: @video_post }
      else
        format.html { render action: 'new' }
        format.json { render json: @video_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_posts/1
  # PATCH/PUT /video_posts/1.json
  def update
    respond_to do |format|
      if @video_post.update(video_post_params)
        format.html { redirect_to post_path(@video_post.post_id), notice: 'El video fue editado exitosamente.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @video_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_posts/1
  # DELETE /video_posts/1.json
  def destroy
    @video_post.destroy
    respond_to do |format|
      format.html { redirect_to post_path(@video_post.post_id) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_post
      @video_post = VideoPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_post_params
      params.require(:video_post).permit(:video_post_title, :video_post_url, :post_id)
    end
end
