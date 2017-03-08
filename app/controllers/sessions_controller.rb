class SessionsController < ApplicationController
  def index
  	if session[:name]
  		@user = session[:name]
		end
  end

  def new
  end

  def create
  	if params[:name] && !params[:name].empty?
	  	session[:name] = params[:name]
	  	redirect_to root_path
  	else
  		redirect_to sessions_new_path
  	end
  end

  def destroy
  	session.destroy
  	redirect_to login_path
  end
end
