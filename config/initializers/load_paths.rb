Rails.application.configure do
  config.autoload_paths += %w("#{config.root}/app/validators")
end
