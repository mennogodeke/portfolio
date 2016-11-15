class CvController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @jobs = Job.all
    @edus = Education.all
  end
end
