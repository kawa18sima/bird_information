class UsersController < ApplicationController
  def mypage
    @articles = Article.where(user_id: current_user.id)
  end
end
