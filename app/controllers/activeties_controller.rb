class ActivetiesController < ApplicationController
  def create
    @skill = Skill.find(params[:skill_id])
    @activity = @skill.activeties.create(activity_params)
    redirect_to skill_path(@skill)
  end

  def destroy
    @skill = Skill.find(params[:skill_id])
    @activity = @skill.activeties.find(params[:id])
    @activity.destroy
    redirect_to skill_path(@skill)
  end

  private
  def activity_params
    params.require(:activety).permit(:name, :skill_id)
  end
end
