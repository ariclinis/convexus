class TipoEntidadesController < ApplicationController
  before_action :set_tipo_entidade, only: [:show, :edit, :update, :destroy]

  # GET /tipo_entidades
  # GET /tipo_entidades.json
  def index
    @tipo_entidades = TipoEntidade.all
  end

  # GET /tipo_entidades/1
  # GET /tipo_entidades/1.json
  def show
  end

  # GET /tipo_entidades/new
  def new
    @tipo_entidade = TipoEntidade.new
  end

  # GET /tipo_entidades/1/edit
  def edit
  end

  # POST /tipo_entidades
  # POST /tipo_entidades.json
  def create
    @tipo_entidade = TipoEntidade.new(tipo_entidade_params)

    respond_to do |format|
      if @tipo_entidade.save
        format.html { redirect_to @tipo_entidade, notice: 'Tipo entidade was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_entidade }
      else
        format.html { render :new }
        format.json { render json: @tipo_entidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_entidades/1
  # PATCH/PUT /tipo_entidades/1.json
  def update
    respond_to do |format|
      if @tipo_entidade.update(tipo_entidade_params)
        format.html { redirect_to @tipo_entidade, notice: 'Tipo entidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_entidade }
      else
        format.html { render :edit }
        format.json { render json: @tipo_entidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_entidades/1
  # DELETE /tipo_entidades/1.json
  def destroy
    @tipo_entidade.destroy
    respond_to do |format|
      format.html { redirect_to tipo_entidades_url, notice: 'Tipo entidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_entidade
      @tipo_entidade = TipoEntidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_entidade_params
      params.require(:tipo_entidade).permit(:descricao, :codigo)
    end
end
