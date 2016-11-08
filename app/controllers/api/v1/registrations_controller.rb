class Api::V1::RegistrationsController < Devise::RegistrationsController
  skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }


 before_filter :configure_permitted_parameters
  respond_to :json

  def create
    build_resource
    resource.skip_confirmation!
    if resource.save
      sign_in resource
      render :status => 200,
           :json => { :success => true,
                      :info => "Registered",
                      :data => { :user => resource,
                                 :auth_token => current_user.authentication_token } }
    else
      render :status => :unprocessable_entity,
             :json => { :success => false,
                        :info => resource.errors,
                        :data => {} }
    end
  end


  def user_new
    @user = User.create(:email => params[:email],:password => params[:password],:password_confirmation => params[:password_confirmation])
  end


private

def sign_up_params
params.require(:user).permit(:name, :email, :password, :password_confirmation)
end

 



end