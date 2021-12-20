class SchedulesRepository

  def self.getSchedulesList(id)
    @schedules = Schedule.where(created_user_id: id)
  end
  
  # Create Schedules
  def self.createSchedules(logged_in_user_id, schedules)
    # Schedule.where(created_user_id: logged_in_user_id).delete_all
    schedules.require(:_json).each do |value|
      schedule = Schedule.new
      schedule.calendarId = value[:calendarId]
      schedule.title = value[:title]
      schedule.body = value[:body]
      schedule.start = value[:start].is_a?(String) ? value[:start] : value[:start].require(:_date)
      schedule.end = value[:end].is_a?(String) ? value[:end] : value[:end].require(:_date)
      schedule.goingDuration = value[:goingDuration]
      schedule.comingDuration = value[:comingDuration]
      schedule.isAllDay = value[:isAllDay]
      schedule.category = value[:category]
      schedule.dueDateClass = value[:dueDateClass]
      schedule.location = value[:location]
      schedule.recurrenceRule = value[:recurrenceRule]
      schedule.isPending = value[:isPending]
      schedule.isFocused = value[:isFocused]
      schedule.isVisible = value[:isVisible]
      schedule.isReadOnly = value[:isReadOnly]
      schedule.isPrivate = value[:isPrivate]
      schedule.color = value[:color]
      schedule.bgColor = value[:bgColor]
      schedule.dragBgColor = value[:dragBgColor]
      schedule.borderColor = value[:borderColor]
      schedule.state = value[:state]
      schedule.created_user_id = logged_in_user_id
      schedule.save
    end
  end

  def self.createSingleSchedule(logged_in_user_id, schedule_params)
    schedule = Schedule.new(schedule_params)
    schedule.created_user_id = logged_in_user_id
    schedule.save
  end

  def self.updateSingleSchedule(schedule_params)
    schedule = Schedule.find(schedule_params[:id])
    schedule.update(schedule_params)
  end

  def self.deleteSingleSchedule(logged_in_user_id, schedule_id)
    schedule = Schedule.find(schedule_id)
    schedule.destroy
  end

  def self.deleteAllSchedules(logged_in_user_id)
    Schedule.where(created_user_id: logged_in_user_id).delete_all
  end
end