class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login , :create, :validate , :index]
    # Login User
   def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid email or password"} , status: 401
    end
  end
end
