class Musician::UsersController < ApplicationController # See How we namespaced the class name ?
  before_action :set_musician, only:[:show, :edit, :update]
  skip_before_action :authenticate_user!, only:[:index, :show]

  def index
    @musicians = User.where(status: "musician")
  end


  def show
    @musician = User.find(params[:id])
  end

  def edit
    @musician = User.find(params[:id])
  end

  def update
    @musician = User.find(params[:id])
    if @musician.update(musician_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def musician_params
    params.require(:user).permit(:first_name, :last_name) # Careful here, we user ":user"
  end
  def set_musician
    @musician = User.find(params[:id])
  end
end
