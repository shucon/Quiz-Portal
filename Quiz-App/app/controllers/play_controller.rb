class PlayController < ApplicationController
  def new
  end

  def play
  	@question = Question.new
  	user_stat = UserStat.where(user_id: session[:user_id] , genre: params[:genre] ,
  						 			subgenre: params[:subgenre])
  	if(user_stat.empty? == true)
  		$user = UserStat.new(user_id: session[:user_id] , genre: params[:genre] ,
  						 			subgenre: params[:subgenre] , last_ques: 0 , score: 0)
  		$user.save()
  	else
  		$user = UserStat.where(user_id: session[:user_id] , genre: params[:genre] ,
  						 			subgenre: params[:subgenre])
  	end

  	if (params[:restore].to_i == 0)
  		$user[0].last_ques = 0
  		$user[0].score = 0
  		$user[0].save()
  		
  	end
  		
  end

  def check
  	@question = Question.new
  	a = Question.where(genre: params[:genre] , subgenre: params[:subgenre])
  	o1 = params[:question][:a1] .to_i
  	o2 = params[:question][:a2] .to_i
  	o3 = params[:question][:a3] .to_i
  	o4 = params[:question][:a4] .to_i
  	if a[$user[0].last_ques].a1 == o1 && a[$user[0].last_ques].a2 == o2 && a[$user[0].last_ques].a3 == o3 && a[$user[0].last_ques].a4 == o4
  		$user[0].score += 1
  		$user[0].last_ques += 1
  		$user[0].save()
  	else
  		$user[0].last_ques += 1
  		$user[0].save()
  	end

  	render 'play'
  end

  private

    def question_params
      params.permit(:a1 ,:a2 ,:a3 ,:a4)
    end


end
