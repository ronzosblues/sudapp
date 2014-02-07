class CommentPostsController < ApplicationController
  before_action :set_comment_post, only: [:show, :edit, :update, :destroy]

  # GET /comment_posts
  # GET /comment_posts.json
  def index
    admin_check
    @comment_posts = CommentPost.all
  end

  # GET /comment_posts/1
  # GET /comment_posts/1.json
  def show
    admin_check
    @comment_post = CommentPost.new
  end

  # GET /comment_posts/new
  def new
    admin_check
    @comment_post = CommentPost.new
  end

  # GET /comment_posts/1/edit
  def edit
  end

  # POST /comment_posts
  # POST /comment_posts.json
  def create
    @comment_post = CommentPost.new(comment_post_params)

    respond_to do |format|
      if @comment_post.save
        @id = @comment_post.post.id.to_s
        @ruta = "/posts/"+@id
        format.html { redirect_to @ruta, notice: 'Commentpost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comment_post }
      else
        format.html { render action: 'new' }
        format.json { render json: @comment_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_posts/1
  # PATCH/PUT /comment_posts/1.json
  def update
    respond_to do |format|
      if @comment_post.update(comment_post_params)
        format.html { redirect_to @comment_post, notice: 'Comment post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comment_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_posts/1
  # DELETE /comment_posts/1.json
  def destroy
    @comment_post.destroy
    respond_to do |format|
      format.html { redirect_to comment_posts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_post
      @comment_post = CommentPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_post_params
      params.require(:comment_post).permit(:content, :post_id, :user_id)
    end
end
