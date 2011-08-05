#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

GeaSimpleWeb::Application.load_tasks

namespace :db do
   task :seed => :environment do
     seed_file = File.join(Rails.root, 'db', 'seeds.rb')
     load(seed_file) if File.exist?(seed_file)
      env_seed_file = File.join(Rails.root, 'db', 'seeds', "#{Rails.env}.rb")
      load(env_seed_file) if File.exist?(env_seed_file)
   end
end
