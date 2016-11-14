class CvController < ApplicationController
  def index
    @jobs = Job.all
    @edus = Education.all
  end
end
