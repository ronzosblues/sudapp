class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  # GET /posts
  # GET /posts.json

  def inicio
    @post = Post.find(params[:id])
    Post.all.each do |p|
    if p.id == @post.id
      p.update_attributes(:inicio => 1)
    else
      p.update_attributes(:inicio => 0)
    end 
    end 
    redirect_to posts_path
  end

  def index
    @posts = Post.all(:order => 'created_at DESC')
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @comment_post = CommentPost.new
    @allposts = params[:allposts].to_i

    if @allposts == 0
      @comments = CommentPost.all.last(7).sort { |a,b| b.created_at <=> a.created_at }
    else
      @comments = CommentPost.find(:all).sort { |a,b| b.created_at <=> a.created_at }
    end
  end

  # GET /posts/new
  def new
    admin_check
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    admin_check
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'La nota fue creada exitosamente.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'La nota fue editada exitosamente.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to :controller => "/posts", :action => "index"}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
  
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:post_title, :post_body, :post_photo, :post_autor, :post_photographer)
    end
end
