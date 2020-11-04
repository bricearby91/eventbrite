class UsersController < ApplicationController
  def show
	#	before_action :authenticate_user!

	if user_signed_in? and authenticate_user!.id == params[:id].to_i
		@user=User.find(params[:id])
	else
		render :error
  end
end
end
