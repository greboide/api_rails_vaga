class V1::DependentesController < ApplicationController
  before_action :authenticate_user!
  respond_to :json
  def index
    @dependentes = Dependente.all
    render json: @dependentes, status: :ok
  end

  def create
    @dependente = Dependente.new(dependente_params)
    if @dependente.save!
      render json: @dependente, status: :created
    else
      render json: @dependente.errors, status: :error
    end
  end
  def show
    render json: Dependente.find(params[:id])
  end
  private
  def dependente_params
    params.require(:dependente).permit(:name, :parentesco, :user_id)
  end
end
