class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?

def after_sign_in_path_for(resource)
  books_index_path
end

def after_sign_up_for(resource)
  root_path
end

end
