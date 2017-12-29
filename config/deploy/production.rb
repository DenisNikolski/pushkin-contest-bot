set :branch, 'master'
set :rails_env, 'production'
set :unicorn_env, 'production'

server '92.53.91.98', user: 'deployer', roles: %w{app web db sidekiq}
