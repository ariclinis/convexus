class ContaBancariaController < ApplicationController
  before_action :set_conta_bancarium, only: [:show, :edit, :update, :destroy]

  # GET /conta_bancaria
  # GET /conta_bancaria.json
  def index
    @conta_bancaria = ContaBancarium.all
  end

  # GET /conta_bancaria/1
  # GET /conta_bancaria/1.json
  def show
  end

  # GET /conta_bancaria/new
  def new
    @conta_bancarium = ContaBancarium.new
  end

  # GET /conta_bancaria/1/edit
  def edit
  end

  # POST /conta_bancaria
  # POST /conta_bancaria.json
  def create
    @conta_bancarium = ContaBancarium.new(conta_bancarium_params)

    respond_to do |format|
      if @conta_bancarium.save
        format.html { redirect_to @conta_bancarium, notice: 'Conta bancarium was successfully created.' }
        format.json { render :show, status: :created, location: @conta_bancarium }
      else
        format.html { render :new }
        format.json { render json: @conta_bancarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conta_bancaria/1
  # PATCH/PUT /conta_bancaria/1.json
  def update
    respond_to do |format|
      if @conta_bancarium.update(conta_bancarium_params)
        format.html { redirect_to @conta_bancarium, notice: 'Conta bancarium was successfully updated.' }
        format.json { render :show, status: :ok, location: @conta_bancarium }
      else
        format.html { render :edit }
        format.json { render json: @conta_bancarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conta_bancaria/1
  # DELETE /conta_bancaria/1.json
  def destroy
    @conta_bancarium.destroy
    respond_to do |format|
      format.html { redirect_to conta_bancaria_url, notice: 'Conta bancarium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conta_bancarium
      @conta_bancarium = ContaBancarium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conta_bancarium_params
      params.require(:conta_bancarium).permit(:descricao, :banco_id, :tipoConta, :moeda_id, :estado, :utilizador_id)
    end
end
