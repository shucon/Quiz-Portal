class LeaderBoardController < ApplicationController
  def user
  end

  def admin
  end

  def user_render
    $user = UserStat.order(score: :desc).where(genre: params[:genre] , subgenre: params[:subgenre])
  end

  def admin_render
  end
end
