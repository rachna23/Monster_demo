class UsersController < ApplicationController
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


  private

  def education_details_params
    params.require(:user).permit(user_education_details_attributes: [:id,:higest_education,:specilization,:institute,:passing_year, '_destroy'])
  end 

end  



