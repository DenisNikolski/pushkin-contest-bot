# config valid for current version and patch releases of Capistrano
lock '~> 3.10.1'

set :application, 'pushkin-contest-bot'
set :repo_url, 'https://github.com/DenisNikolski/pushkin-contest-bot.git'
set :deploy_to, '/var/www/pushkin/'
set :linked_files, %w{config/database.yml config/secrets.yml config/secrets.yml.key}
set :linked_dirs, %w{log tmp/pids public/assets tmp/cache tmp/sockets vendor/bundle}
set :ssh_options, { :forward_agent => true }
set :pry, false
set :rvm_ruby_version, '2.4.1@pushkin-bot'
set :puma_preload_app, true
set :puma_init_active_record, true