json.array!(@calendars) do |calendar|
  json.extract! calendar, :id, :title, :description, :start_time, :end_time, :user_id
  json.url calendar_url(calendar, format: :html)
end
