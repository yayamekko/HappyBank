class LoginController < ApplicationController
  
  def new
    # @user = User.new
  end
  
  def new_user
    #userオブジェクト作成
    # @user = User.new(user_params)
    # puts @user

    respond_to do |format|
      
      #DB登録し、成功の場合
      # if @user.save
        #htmlのフォーマットを指定し、登録成功ページへ遷移する
        format.html { render :login, status: :created, location: @user }
      #登録失敗の場合
      # else
        # puts @user
        #htmlのフォーマットを指定し、new画面へリダイレクトする
      #   format.html { render :new_user }
      #   format.html { render new: @user.errors, status: :unprocessable_entity }
      end
    # end
  end

  def login
  end
  
  private
  # Use callbacks to share common setup or constraints between actions.

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    puts @user
    params.require(:user).permit(:user_id, :user_password, :user_password_second)
  end
end
