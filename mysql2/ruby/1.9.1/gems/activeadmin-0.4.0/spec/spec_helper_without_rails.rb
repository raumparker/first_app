$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH << File.expand_path('../support', __FILE__)

ENV['BUNDLE_GEMFILE'] = File.expand_path('../../Gemfile', __FILE__)

require 'detect_rails_version'
ENV['RAILS'] = detect_rails_version

require "bundler"
Bundler.setup
