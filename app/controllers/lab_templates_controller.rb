class LabTemplatesController < ApplicationController

  def index
    @lab_templates = LabTemplate.all
  end

  def new
    @lab_template = LabTemplate.new
  end

  def create
    @lab_template = LabTemplate.create(lab_template_params)
    @lab_template.save
    redirect_to @lab_template
  end 

  def show
    @lab_template = LabTemplate.find(params[:id])
  end

  def destroy
    @lab_template = LabTemplate.find(params[:id])
    @lab_template.destroy
    redirect_to lab_templates_path
  end

  private
  def lab_template_params
    params.require(:lab_template).permit(:name)
  end

end
