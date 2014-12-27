class AmigosController < ApplicationController
  before_action :set_amigo, only: [:show, :edit, :update, :destroy]

  # GET /amigos
  # GET /amigos.json
  def index
    @amigos = Amigo.all
  end

  # GET /amigos/1
  # GET /amigos/1.json
  def show
    inaccesible
  end

  # GET /amigos/new
  def new
    admin_check
    @amigo = Amigo.new
  end

  # GET /amigos/1/edit
  def edit
    admin_check
  end

  # POST /amigos
  # POST /amigos.json
  def create
    @amigo = Amigo.new(amigo_params)

    respond_to do |format|
      if @amigo.save
        format.html { redirect_to amigos_path, notice: 'Amigo creado con exito.' }
        format.json { render action: 'show', status: :created, location: @amigo }
      else
        format.html { render action: 'new' }
        format.json { render json: @amigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amigos/1
  # PATCH/PUT /amigos/1.json
  def update
    respond_to do |format|
      if @amigo.update(amigo_params)
        format.html { redirect_to amigos_path, notice: 'Amigo editado con exito.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @amigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amigos/1
  # DELETE /amigos/1.json
  def destroy
    @amigo.destroy
    respond_to do |format|
      format.html { redirect_to amigos_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amigo
      @amigo = Amigo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amigo_params
      params.require(:amigo).permit(:name, :web)
    end
end
