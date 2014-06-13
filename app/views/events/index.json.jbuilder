json.array!(@events) do |event|
  json.extract! event, :id, :name, :user_id, :description, :location, :start_time, :end_time, :min_volunteers, :max_volunteers, :scheduled_text, :time_to_send_message
  json.url event_url(event, format: :json)
end
