class ContractsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  def show
    @contract = Contract.find(params[:id])
  end
  def new
    @contract = Contract.new
  end
  def edit
  end
  def create
    @contract = Contract.new(contract_params)
    if @contract.save
      redirect_to @contract
    else
      flash[:warning] = "Warning! All fields are mandatory."
      render :new
    end
  end
  def update
  end

  private
  def contract_params
    params.require(:contract).permit(:name)
  end
end
