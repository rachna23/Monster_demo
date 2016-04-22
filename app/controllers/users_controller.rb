class UsersController < ApplicationController
respond_to :html, :json 

  def index
    @users = User.all
    respond_to do |format|
      format.html
    end
  end 
	
  def get_user_education_details
    @user = current_user#.user_education_details.build
 		respond_to do |format|
      #format.html
      format.js
    end
	end 

  def post_user_education_details 
    current_user.update_attributes(education_details_params)
    redirect_to root_path
  end   

  def user_connections
    @my_connectins = User.where(:industry => 'it')
  end   

  def send_connection_email
    want_to_connect_user_id = params[:connection_id]
    UserMailer.connection_email(current_user,want_to_connect_user_id).deliver
    redirect_to root_path
    flash[:success] = 'Mail sent.'
  end  

  def show
    render :partial => "/profiles/show"
  end  

  def update
    current_location = params[:user][:current_location]
    first_name = params[:user][:first_name]
    last_name = params[:user][:last_name]
    mobile_number = params[:user][:mobile_number]
    current_user.update_attributes(:current_location=>current_location)
    respond_with current_user
  end 

  def count_user_connections
    @user_connection = current_user.user_connections.build
    @user_connection.connected_user_id=params[:id]
    @user_connection.count="1"
    @user_connection.save
    if @user_connection.count == 1
      UserMailer.connection_confirmation_email(current_user,want_to_connect_user_id).deliver
    end 
    redirect_to root_path
    flash[:success] = 'Mail sent.'  
  end  

  private

  def education_details_params
    params.require(:user).permit(user_education_details_attributes: [:id,:higest_education,:specilization,:institute,:passing_year, '_destroy'])
  end 

  def user_connection_params
    params.require(:user).permit(:user_connections => [:user_id,:count,:connect_user_id]) 
  end

end  



