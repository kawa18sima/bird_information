class UsersController < ApplicationController
  def mypage
    @comp_articles = Article.where(user_id: current_user.id, complete: false).order("created_at DESC")
    @draft_articles = Article.where(user_id: current_user.id, complete: true).order("created_at DESC")
  end
end
