class HomesController < ApplicationController
  def index
    @user =User.all
  end
  def show
    @user = User.find(params[:id])
  end 
  def accept
    @user = User.find(params[:id])
    @user.update(usersinput: true)
    redirect_to root_path
  end
   def reject

    @user = User.find(params[:id])
    @user.update(usersinput: false)
    redirect_to root_path
  end

end
