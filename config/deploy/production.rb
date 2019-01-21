set :stage, :production
set :branch, "master"
set :rbenv_ruby, '2.4.1'
set :deploy_to, "/home/ubuntu/#{fetch(:application)}_#{fetch(:stage)}"
set :default_env, {
  'app_dir' => '#{fetch(:deploy_to)}',
  'RAILS_ENV' => 'production'
}
server '13.250.112.165', user: 'ubuntu', roles: %w{web app db}, primary: true

set :rails_env, 'production'

set :puma_bind, %w(tcp://0.0.0.0:9292)
set :puma_workers, 2
