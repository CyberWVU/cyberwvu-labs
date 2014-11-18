class QuestionsController < ApplicationController
  def create
    @lab_template = LabTemplate.find(params[:lab_template_id])
    @lab_template.questions.create(question_params)
    redirect_to @lab_template
  end

  def edit
    logger.debug params
    @lab_template = LabTemplate.find(params[:lab_template_id])
    @question = @lab_template.questions.find(params[:id])
  end


  def destroy
    @lab_template = LabTemplate.find(params[:lab_template_id])    
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to @lab_template
  end

  def update
    @question = Question.find(params[:id])
    @question.update_attributes(question_params)
    @question.save
    @lab_template = LabTemplate.find(params[:lab_template_id])
    redirect_to @lab_template
  end

private
  def question_params
     params.require(:question).permit(:name)
  end

end
