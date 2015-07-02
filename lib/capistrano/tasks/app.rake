namespace :app do
  task :update_rvm_key do
    execute :gpg, "--keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3"
  end
end
before "rvm1:install:rvm", "app:update_rvm_key"
