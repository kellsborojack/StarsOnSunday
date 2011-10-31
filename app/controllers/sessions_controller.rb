class SessionsController < ApplicationController
  # For security purposes, Devise just authenticates an user
  # from the params hash if we explicitly allow it to. That's
  # why we need to call the before filter below.
  before_filter :allow_params_authentication!, :only => :create

  def new
    @user = User.new(params[:user])
  end

  def create
    # Since the authentication happens in the rack layer,
    # we need to tell Devise to call the action "sessions#new"
    # in case something goes bad. Feel free to change it.
    user = authenticate_user!(:recall => "sessions#new")
    sign_in user
    redirect_to root_path, :notice=>"You are now signed in!"

  end

  def destroy
    sign_out
    redirect_to root_path,  :notice=> "You are now signed out!"
  end
end
