class BarOwner::UsersController < ApplicationController
  before_action :set_bar_owner, only:[:show, :edit, :update]

  def show
    @bar_owner = User.find(params[:id])
  end

  def edit
    @bar_owner = User.find(params[:id])
  end

  def update
    @bar_owner = User.find(params[:id])
    if @bar_owner.update(bar_owner_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def bar_owner_params
    params.require(:user).permit(:first_name, :last_name)
  end
  def set_bar_owner
    @bar_owner = User.find(params[:id])
  end
end
