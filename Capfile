require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"


require "capistrano/rbenv"
require "capistrano/bundler"
#require "capistrano/rails/assets"
require "capistrano/local_precompile"
require "capistrano/rails/migrations"
require "capistrano/systemd/multiservice"
require "capistrano/secrets_yml"
require "capistrano/rbenv_install"
require "capistrano/database_yml"
require "capistrano/puma"


install_plugin Capistrano::Systemd::MultiService.new_service("puma")
install_plugin Capistrano::Systemd::MultiService.new_service("sidekiq")
install_plugin Capistrano::SCM::Git
install_plugin Capistrano::Puma

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
Dir.glob("lib/capistrano/tasks/*.cap").each { |r| import r }
