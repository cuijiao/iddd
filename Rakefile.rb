# require "bundler_geminabox/gem_tasks"

# Don't require this stuff on the Bamboo agent
if ENV['bamboo_planKey'].nil?
  require 'rspec/core/rake_task'
  require '/Users/jcui/Workspace/Learn/IDDD/lib/tasks/db_task'

  Leads::Data::DBTask.new.install_tasks

  RSpec::Core::RakeTask.new(:spec)
  task :default => :spec
end