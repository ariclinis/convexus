class OperacoesFaturasController < ApplicationController
  before_action :set_operacoes_fatura, only: [:show, :edit, :update, :destroy]

  # GET /operacoes_faturas
  # GET /operacoes_faturas.json
  def index
    @operacoes_faturas = OperacoesFatura.all
  end

  # GET /operacoes_faturas/1
  # GET /operacoes_faturas/1.json
  def show
  end

  # GET /operacoes_faturas/new
  def new
    @operacoes_fatura = OperacoesFatura.new
  end

  # GET /operacoes_faturas/1/edit
  def edit
  end

  # POST /operacoes_faturas
  # POST /operacoes_faturas.json
  def create
    @operacoes_fatura = OperacoesFatura.new(operacoes_fatura_params)

    respond_to do |format|
      if @operacoes_fatura.save
        format.html { redirect_to @operacoes_fatura, notice: 'Operacoes fatura was successfully created.' }
        format.json { render :show, status: :created, location: @operacoes_fatura }
      else
        format.html { render :new }
        format.json { render json: @operacoes_fatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operacoes_faturas/1
  # PATCH/PUT /operacoes_faturas/1.json
  def update
    respond_to do |format|
      if @operacoes_fatura.update(operacoes_fatura_params)
        format.html { redirect_to @operacoes_fatura, notice: 'Operacoes fatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @operacoes_fatura }
      else
        format.html { render :edit }
        format.json { render json: @operacoes_fatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operacoes_faturas/1
  # DELETE /operacoes_faturas/1.json
  def destroy
    @operacoes_fatura.destroy
    respond_to do |format|
      format.html { redirect_to operacoes_faturas_url, notice: 'Operacoes fatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operacoes_fatura
      @operacoes_fatura = OperacoesFatura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operacoes_fatura_params
      params.require(:operacoes_fatura).permit(:codigo, :descricao, :id_estado, :id_utilizador)
    end
end
