require 'bundler/setup'
Bundler::GemHelper.install_tasks

task :default => :spec

desc "run specs"
task :spec do
  sh "bundle exec spec --color spec/"
end