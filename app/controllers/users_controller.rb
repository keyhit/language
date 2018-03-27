class UsersController < ApplicationController
  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if User.update(user_params)
        format.html { redirect_to '/', notice: 'Word was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

# binding.pry
  private
  def user_params
    params.require(:user).permit(:id, :lang_id)
  end
end
