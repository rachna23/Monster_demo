class UserStepsController < ApplicationController
	include Wicked::Wizard
  steps :personal, :professional

	def update
    byebug
		@user = current_user
	 	current_user.update_attributes(user_params)
  	render_wizard @user
	end
  
  def show
    @user = current_user
    render_wizard
  end



  private

  def user_params
    params.require(:user).permit(:first_name,:last_name,:mobile_number,:current_location,:total_experience,:industry,:education_details,:previous_company_details, {:country_ids => []})
  end

	def wicked_finish
  	redirect_to root_url, notice: "Thanks for signing up."
	end

end


