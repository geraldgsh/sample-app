class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #debugger
  end

  def create
  	@user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to user_url(@user)
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    log_out
    redirect_to
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                     :password_confirmation)
    end
end
