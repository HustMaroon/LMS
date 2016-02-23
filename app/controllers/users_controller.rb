class UsersController < ApplicationController

  def index
  	@users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    	render 'show'
    else
      render 'new'
    end
  end
  private

    def user_params
      params.require(:user).permit(:name, :email, :avatar, :password,
                                   :password_confirmation)
    end
    
end