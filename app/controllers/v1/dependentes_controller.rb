class V1::DependentesController < ApplicationController
  before_action :authenticate_user!
  respond_to :json
  def index
    @dependentes = User.find(@current_user.id).dependentes
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
  def update
    @dependente = Dependente.find(params[:id])
    @dependente.update!(dependente_params)
    redirect_to @dependente
  end
  def destroy
    Dependente.find(params[:id]).destroy!
    head :no_content
  end
  def show
    render json: Dependente.find(params[:id])
  end
  private
  def dependente_params
    params.require(:dependente).permit(:id, :name, :parentesco, :user_id)
  end
end
