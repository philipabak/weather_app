module HomeHelper
  def get_time_from_timestamp(obj_time)
    time_sec = DateTime.strptime("#{obj_time}", '%s')
    hour_offset = Time.now.utc_offset / 3600
    time_current = time_sec + hour_offset.hours
    time_current.strftime('%l %p')
  end
end
