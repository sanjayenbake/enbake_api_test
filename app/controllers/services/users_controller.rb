class Services::UsersController < ApplicationController

  respond_to :json
  
  def index
    respond_with User.all.as_json
  end

  def create
    user = User.create(user_params)
    respond_to do |format|
      format.json{ render :json => user.as_json }
    end
  end
  
  def destroy
    user = User.find(params[:id]).delete
    respond_to do |format|
      format.json{ render :json => user.as_json }
    end
  end
  
  private
  
  def user_params
    params.permit(:firstName, :lastName, :password)
  end

end
