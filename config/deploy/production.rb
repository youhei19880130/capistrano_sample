set :stage, :production
set :branch, 'master'

role :app, %w{vagrant@192.168.33.21}
role :web, %w{vagrant@192.168.33.21}
role :db, %w{vagrant@192.168.33.21}

set :ssh_options, {
  keys: [File.expand_path('~/.ssh/insecure_private_key')],
  forward_agent: true
}
