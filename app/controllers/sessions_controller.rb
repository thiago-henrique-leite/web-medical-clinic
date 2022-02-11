
class SessionsController < ApplicationController
  def destroy
    # render json: session
    session.destroy
    redirect_to '#root' 
  end  
end