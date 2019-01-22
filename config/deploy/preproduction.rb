set :stage, :preproduction
set :branch, "preproduction"
set :rbenv_ruby, '2.4.1'
set :deploy_to, "/home/ubuntu/#{fetch(:application)}_#{fetch(:stage)}"
set :default_env, {
  'app_dir' => '#{fetch(:deploy_to)}',
  'RAILS_ENV' => 'preproduction'
}
server '13.229.119.187', user: 'ubuntu', roles: %w{web app db}, primary: true

set :rails_env, 'preproduction'

set :puma_bind, %w(tcp://0.0.0.0:9393)
set :puma_workers, 2
