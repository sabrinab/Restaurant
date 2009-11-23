class Clearance::UsersController < ApplicationController
  unloadable

  before_filter :redirect_to_root, :only => [:new, :create], :if => :signed_in?
  filter_parameter_logging :password

  def new
    @user = ::User.new(params[:user])
    render :template => 'users/new'
  end

  def create
    @user = ::User.new params[:user]
    if @user.save
      ::ClearanceMailer.deliver_confirmation @user
      @user.confirm_email!
      flash_notice_after_create
      redirect_to(url_after_create)
    else
      render :template => 'users/new'
    end
  end

  private

  def flash_notice_after_create
    flash[:notice] = translate(:deliver_confirmation,
      :scope   => [:clearance, :controllers, :users],
      :default => "User created successfully, please log in. ")
  end

  def url_after_create
    new_session_url
  end
end
