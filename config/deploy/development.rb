set :stage, :development
set :branch, 'development'

role :app, %w{vagrant@localhost}
role :web, %w{vagrant@localhost}
role :db, %w{vagrant@localhost}

set :ssh_options, {
  keys: [File.expand_path('~/.ssh/insecure_private_key')],
  forward_agent: true
}
