class HomeController < ApplicationController
  before_filter :authorize_admin, only: :index
  def authorize_admin
    redirect_to '/admin/index' if current_user.admin?
    #redirects to admin controller if admin? true 
  end

  def index
        
  end
end
