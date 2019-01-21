# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "waiyanmin"
set :repo_url, "git@github.com:waiyanmin1001/dev_training.git"
set :default_env, { 
  path: "~/.rbenv/shims:~/.rbenv/bin:$PATH"
}
append :linked_files, "config/database.yml", "puma.rb", "config/secrets.yml"

append :linked_dirs, "log", "tmp/cache", "tmp/pids"

set :keep_releases, 5

namespace :deploy do

after 'deploy:publishing', 'systemd:puma:restart'
after 'deploy:publishing', 'systemd:puma:reload-or-restart'

end
