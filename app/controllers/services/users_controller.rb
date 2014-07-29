class Services::UsersController < ApplicationController

  respond_to :json
  
  def index
    respond_with User.select('id, first_name, last_name').all.as_json
  end

  def create
    user = User.create(user_params)
    user = User.select('id, first_name, last_name').find(user.id)
    respond_to do |format|
      format.json{ render :json => user.to_json }
    end
  end
  
  def destroy
    user = User.select('id, first_name, last_name').find(params[:id]).delete
    respond_to do |format|
      format.json{ render :json => user.to_json }
    end
  end
  
  private
  
  def user_params
    params.required(:user).permit(:first_name, :last_name, :password)
  end

end
