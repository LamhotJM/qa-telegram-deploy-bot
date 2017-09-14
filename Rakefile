# frozen_string_literal: true

require 'rake'
require 'dotenv/load'
require 'telegram/bot'

namespace :deploy_bot do
  task :start do
    Dir['./lib/**/*.rb'].each { |file| require file }
    DeployBot.start
  end
end

task default: 'deploy_bot:start'
