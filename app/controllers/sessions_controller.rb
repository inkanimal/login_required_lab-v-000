class SessionsController < ApplicationController
   before_action :require_login
   
   def new 
   end
   
   def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/'
    else 
      
      redirect_to :login
    end
  end
  
  def destroy
    if session[:name].present?
        session.delete :name
    end
       redirect_to :login
    end
  
  
end