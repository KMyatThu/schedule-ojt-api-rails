class SchedulesController < ApplicationController
  before_action :authorized

  # get all schedules
  def index
    @schedules = SchedulesService.schedulesList(logged_in_user.id)
    render json: @schedules
  end

  # create schedules
  def create
    SchedulesService.deleteAllSchedules(logged_in_user.id)
    SchedulesService.createSchedules(logged_in_user.id, params) if params[:_json].length != 0
    render json: { response: "ok" }
  end

  # create single schedule
  def createSingleSchedule
    SchedulesService.createSingleSchedule(logged_in_user.id, schedule_params)
    render json: { respone: "ok" }
  end

  def updateSingleSchedule
    SchedulesService.updateSingleSchedule(schedule_params)
    render json: { respone: "ok" }
  end

  def deleteSingleSchedule
    SchedulesService.deleteSingleSchedule(logged_in_user.id, params[:id])
    render json: { respone: "ok" }
  end

  private

  def schedule_params
    params[:schedule][:start] = params[:schedule][:start].require(:_date)
    params[:schedule][:end] = params[:schedule][:end].require(:_date)
    params[:schedule].permit(:id, :calendarId, :title, :body, :goingDuration, :comingDuration, :isAllDay, :category,
    :dueDateClass, :location, :recurrenceRule, :isPending, :isFocus, :isVisible, :isReadOnly, :isPrivate, :color, :bgColor, :dragBgColor,
    :borderColor, :customStyle, :state, :start, :end)
  end
end