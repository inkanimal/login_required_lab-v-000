class SecretsController < ApplicationController
  
  def show 
    
     private
  def require_login
    unless session.include? :name
      redirect_to :login
    end
  
    
  end
end