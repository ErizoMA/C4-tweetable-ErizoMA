class UsersController < ApplicationController
  # GET /user
  def index
    @user = User.all
  end

  # POST /user/:id
  def show
    @user = User.find(params[:id])
    @tweets = Tweet.where(user_id: params[:id]).find_each
  end

  # GET /user/new
  def new
    @user = User.new
    @roles = User.roles
  end

  # POST /user
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  # GET /user/:id/edit
  def edit
    @user = User.find(params[:id])
    @roles = User.roles
  end

  # PATCH /user/:id
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  # DELETE /user/:id
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :name, :avatar, :password)
  end
end
