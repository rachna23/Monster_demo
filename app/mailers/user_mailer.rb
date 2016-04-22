class UserMailer < ApplicationMailer

	def connection_email(user,want_to_connect_user_id)
    @user = user
    @url  = 'http://example.com/login'
    @want_to_connect_user_id = want_to_connect_user_id
    mail(to: 'rachna.2302@gmail.com', subject: 'Welcome to My Awesome Site')
  end

  def connection_confirmation_email(user,want_to_connect_user_id)
    @user = user
    @url  = 'http://example.com/login'
    @want_to_connect_user_id = want_to_connect_user_id
    mail(to: 'rachna.2302@gmail.com', subject: 'Welcome to My Awesome Site')
  end

end
