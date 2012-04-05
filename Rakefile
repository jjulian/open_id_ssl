# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

OpenIdSsl::Application.load_tasks

task :server do
  pids = []

  pids << fork do
    system %{nginx -p #{Rails.root}/ -c #{File.join(Rails.root, 'config', "nginx.conf")}}
  end

  pids << fork do
    system %{rails server -p 3300}
  end

  trap("INT") do
    pids.each{|p| Process.kill("INT", p) }
  end
  trap("TERM") do
    pids.each{|p| Process.kill("INT", p) }
  end
  pids.each{|p| Process.wait(p)}
end
