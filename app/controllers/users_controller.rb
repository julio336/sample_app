class UsersController < ApplicationController
def show
    @user = User.find(params[:id])
  end
  def new
  	@user = User.new
  end

  def create
@user = User.new(name: "Foo Bar", email: "foo@invalid",
                 password: "foo", password_confirmation: "bar")    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end
end
