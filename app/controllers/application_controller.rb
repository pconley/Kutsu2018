class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  # Overwriting the DEVISE sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :admin
      new_admin_session_path
    # elsif resource_or_scope == :user
    #   new_user_session_path
    else
      root_path
    end
  end

  # Overwriting the DEVISE sign_in redirect path method
  def after_sign_in_path_for(resource)
  	# puts "*** after sign in. resource=#{resource.inspect}"
    if resource.instance_of? Admin
      admin_pages_home_path
    # elsif resource.instance_of? User
    #   pages_home_path
    else
      root_path
    end
  end

end