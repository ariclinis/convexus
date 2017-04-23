class ProdServisController < ApplicationController
  before_action :set_prod_servi, only: [:show, :edit, :update, :destroy]

  # GET /prod_servis
  # GET /prod_servis.json
  def index
    @prod_servis = ProdServi.all
  end

  # GET /prod_servis/1
  # GET /prod_servis/1.json
  def show
  end

  # GET /prod_servis/new
  def new
    @prod_servi = ProdServi.new
  end

  # GET /prod_servis/1/edit
  def edit
  end

  # POST /prod_servis
  # POST /prod_servis.json
  def create
    @prod_servi = ProdServi.new(prod_servi_params)

    respond_to do |format|
      if @prod_servi.save
        format.html { redirect_to @prod_servi, notice: 'Prod servi was successfully created.' }
        format.json { render :show, status: :created, location: @prod_servi }
      else
        format.html { render :new }
        format.json { render json: @prod_servi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prod_servis/1
  # PATCH/PUT /prod_servis/1.json
  def update
    respond_to do |format|
      if @prod_servi.update(prod_servi_params)
        format.html { redirect_to @prod_servi, notice: 'Prod servi was successfully updated.' }
        format.json { render :show, status: :ok, location: @prod_servi }
      else
        format.html { render :edit }
        format.json { render json: @prod_servi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prod_servis/1
  # DELETE /prod_servis/1.json
  def destroy
    @prod_servi.destroy
    respond_to do |format|
      format.html { redirect_to prod_servis_url, notice: 'Prod servi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prod_servi
      @prod_servi = ProdServi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prod_servi_params
      params.require(:prod_servi).permit(:codigo, :descricao, :valor_unitario, :id_imposto, :id_estado, :id_utilizador)
    end
end
