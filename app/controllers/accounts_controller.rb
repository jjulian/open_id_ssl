class AccountsController < ApplicationController
  def update
    session[:email] = request.env['omniauth.auth']['info']['email']
    redirect_to root_url
  end

  def failure
    render :text => 'Auth Failure'
  end
end