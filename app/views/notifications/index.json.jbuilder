json.array!(@notifications) do |notification|
  json.extract! notification, :id, :sender_email, :subject, :body
  json.url notification_url(notification, format: :json)
end
