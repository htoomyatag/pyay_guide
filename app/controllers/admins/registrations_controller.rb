class Admins::RegistrationsController < Devise::RegistrationsController

	layout false

  	def after_sign_in_path_for(admins)
	 dashboard_path
  	end

  	def create
		    #...
		    auth_options = { :recall => 'home#index', :scope => :admin }
		    resource = warden.authenticate!(auth_options)
		    #..
    end

end



