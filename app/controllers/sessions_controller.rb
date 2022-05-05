# # frozen_string_literal: true

class SessionsController < Devise::SessionsController
  #   prepend_before_action :require_no_authentication, only: [:new, :create]
  # prepend_before_action :allow_params_authentication!, only: :create
  # prepend_before_action :verify_signed_out_user, only: :destroy
  # prepend_before_action(only: [:create, :destroy]) { request.env["devise.skip_timeout"] = true }
  # before_action :configure_sign_in_params, only: [:create]

  before_action :verify_user, only: :create

  # GET /resource/sign_in
   def new
    super 
    #   self.resource = resource_class.new(sign_in_params)
    # clean_up_passwords(resource)
    # yield resource if block_given?
    # respond_with(resource, serialize_options(resource))
    
  end
  # POST /resource/sign_in
    # def create
       
    # end

  def verify_user
    @user = User.find_by(email: params["user"]["email"])
    if @user.present?
      if @user.usersinput == false  
        flash[:alert] = "your account Reject !!"
        redirect_to user_session_path 
      elsif @user.usersinput == true  
           
      else 
        flash[:alert] = "your account not conform!!"
        redirect_to user_session_path
      end  
    end       
  end
  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
