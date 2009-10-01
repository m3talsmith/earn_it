require 'rubygems'
require 'couchrest'
require 'spec/expectations'

# -- Mock Rails --
  RAILS_ROOT = FileUtils.pwd
  RAILS_ENV = "cucumber"
# --