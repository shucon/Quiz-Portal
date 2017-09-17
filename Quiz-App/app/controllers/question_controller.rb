class QuestionController < ApplicationController
  
  def new
  	@question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
    	flash[:success] = "Successfully Added A Question"
    	redirect_to add_question_url
    else
      render 'new'
    end
  end

  private

    def question_params
      params.require(:question).permit(:question, :option1, :option2,
                                   :option3, :option4 ,:genre ,:a1 ,:a2 ,:a3 ,:a4 ,:subgenre)
    end

  end
