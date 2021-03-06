RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

# -- Disable annoying Nokogiri depreciation warnings
I_KNOW_I_AM_USING_AN_OLD_AND_BUGGY_VERSION_OF_LIBXML2 = true

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'chriseppstein-compass', :lib => 'compass', :source => 'http://gems.github.com/'
  config.gem 'haml', :lib => 'haml', :version => '>=2.2.0'
  github = "http://gems.github.com" # to use for sources
  
  config.gem "rspec",
    :lib      => false,
    :version  => ">= 1.2.0"
  config.gem "rspec-rails",
    :lib      => false,
    :version  => ">= 1.2.0"
  config.gem "cucumber",
    :version  => ">= 0.3.98"
  config.gem "webrat",
    :version  => ">= 0.5.3"
    
  config.gem "authlogic"
  
  config.gem "haml",
    :source   => github,
    :version  => ">= 2.2.0"
  config.gem "chriseppstein-compass",
    :source   => github,
    :version  => ">= 0.6.13",
    :lib      => "compass"
    
  config.gem "mbleigh-seed-fu",
    :source   => github,
    :version  => ">= 1.0.0",
    :lib      => "seed-fu"
    
  config.gem "RedCloth",
    :version  => ">= 4.2.2"
  
  config.plugins = [ :haml, :all ]
  
  # not working for some reason I'm too lazy to debug right now
  # config.frameworks -= [ :active_record ]
  
  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names.
  config.time_zone = 'UTC'
end

ENV["TZ"] = 'UTC'