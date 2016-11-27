Rails.application.config.to_prepare do
  CamaleonCms::User.class_eval do
    devise :database_authenticatable, :registerable, :confirmable, :recoverable, stretches: 12
  end
end
