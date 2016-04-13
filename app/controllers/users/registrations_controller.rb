class Users::RegistrationsController < Devise::RegistrationsController

   def new
     super
   end

   def create
     super
   end

   def update
     super
   end

   def after_sign_up_path_for(resource)
    user_steps_path
   end

   def after_inactive_sign_up_path_for(resource)
    super(resource)
   end

end