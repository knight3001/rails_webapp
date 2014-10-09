class AvatarsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @avatars = Avatar.all
  end
  
  def show
    @user = User.find(params[:user_id])
    @avatar = @user.avatars.find(params[:id])
  end
  
  def new
    @user = User.find(params[:user_id])
    @avatar = Avatar.new
  end

  def create
    @user = User.find(params[:user_id])
    @avatar = @user.avatars.create(avatar_params)
    if @avatar.save
      if params[:avatar][:picture].present?
        render :crop
      else
        redirect_to action: 'index'
      end
    else
      render :new
    end
  end
  
  def edit
     @user = User.find(params[:user_id])
     @avatar = @user.avatars.find(params[:id])
  end
  
  def update
    @user = User.find(params[:user_id])
    @avatar = @user.avatars.find(params[:id])
    if @avatar.update(avatar_params)
      if params[:avatar][:picture].present?
        render :crop
      else
        redirect_to action: 'index'
      end
    else
      render :edit
    end
  end
  
  def destroy
    @avatar = Avatar.find(params[:id])
    @avatar.destroy
     
    redirect_to action: 'index'
  end
    
  private
    def avatar_params
      params.require(:avatar).permit(:title, :description, :picture, :crop_x, :crop_y, :crop_w, :crop_h)
    end
  
end
