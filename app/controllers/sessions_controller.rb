class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to show_path
    end
  end

  def destroy
    if session[:name]
      session.clear
      redirect_to new_session_path
    else
      redirect_to new_session_path
    end

  end

end