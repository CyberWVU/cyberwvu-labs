class QuestionsController < ApplicationController
  def create
    @lab_template = LabTemplate.find(params[:lab_template_id])
    @lab_template.questions.create(question_params)
    redirect_to @lab_template
  end

private
  def question_params
     params.require(:question).permit(:name)
  end

end
