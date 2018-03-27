require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'site_prism' 
require 'pry' 

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
end

task :default => :features