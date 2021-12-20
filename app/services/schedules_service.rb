class SchedulesService

  # Get all Schedules
  def self.schedulesList(id)
    @schedules = SchedulesRepository.getSchedulesList(id);
  end

  # Create Schedules Lists
  def self.createSchedules(logged_in_user_id, schedules)
    SchedulesRepository.createSchedules(logged_in_user_id, schedules);
  end

  # Create Single Schedule
  def self.createSingleSchedule(logged_in_user_id, schedule_params)
    SchedulesRepository.createSingleSchedule(logged_in_user_id, schedule_params);
  end

  # update Single Schedule
  def self.updateSingleSchedule(schedule_params)
    SchedulesRepository.updateSingleSchedule(schedule_params);
  end

  # delete Single Schedule
  def self.deleteSingleSchedule(logged_in_user_id, id)
    SchedulesRepository.deleteSingleSchedule(logged_in_user_id, id);
  end

  def self.deleteAllSchedules(logged_in_user_id)
    SchedulesRepository.deleteAllSchedules(logged_in_user_id);
  end

  def self.createNewSchedulesTest(logged_in_user_id, schedule_params)
    SchedulesRepository.createSingleSchedule(logged_in_user_id, schedule_params);
  end
end