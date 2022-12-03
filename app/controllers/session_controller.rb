class SessionController < ApplicationController
  def create
    user=User.find_by(username: params[:username])
    session[:user_id]=user.id
    render json: user
  end

  def show
    user=User.find_by(id: params[:user_id])
    if user
      render json:user
    else
      render json: {error: "user is not authorized"}
    end

  end
  def destroy
    session.delete :user_id
    head :no_content

  end
end
