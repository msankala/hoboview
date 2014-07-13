# Mount this application to a unique subdirectory
# You can either use Rails.application.config or <AppName>::Application.config
Hoboview::Application.config.relative_url_root = '/hoboview'
Hoboview::Application.config.root_directory = '/hoboview'
Hoboview::Application.config.assets.prefix = '/hoboview/assets'
