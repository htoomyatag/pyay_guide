class Admins::SessionsController < Devise::SessionsController

	layout false
	
  	def after_sign_in_path_for(admins)
		dashboard_path
	end

	def after_sign_out_path_for(admins)
		new_admin_session_path
	end

end
