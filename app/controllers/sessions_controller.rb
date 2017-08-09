class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.
            find_by(username: params[:username]).
            try(:authenticate, params[:password])

    return render action: 'new' unless @user

    #logged in
    session[:user_id] = @user.id
    redirect_to dashboard_index_path
  end
  def destroy
    session[:user_id] = nil

    # reset_session
    redirect_to root_path
  end
end
