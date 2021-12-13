class SchedulesController < ApplicationController
  before_action :authorized

  # get all schedules
  def index
    @schedules = SchedulesService.schedulesList(logged_in_user.id)
    render json: @schedules
  end

  # create schedules
  def create
    SchedulesService.createSchedules(logged_in_user.id, params)
    render json: { response: "ok" }
  end
end