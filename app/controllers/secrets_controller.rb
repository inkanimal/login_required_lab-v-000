class SecretsController < ApplicationController
  
  def show 
    
  end
    
  private
    def require_login
      unless session.include? :name
      redirect_to :login
    end
  
    
  end
end