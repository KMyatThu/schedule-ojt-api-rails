class SchedulesService

  # Get all Schedules
  def self.schedulesList(id)
    @schedules = SchedulesRepository.getSchedulesList(id);
  end

  # Create Schedules Lists
  def self.createSchedules(logged_in_user_id, schedules)
    SchedulesRepository.createSchedules(logged_in_user_id, schedules);
  end
end