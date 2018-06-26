$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "activerecord_eternal_validator"

require 'active_record'
ActiveSupport.run_load_hooks(:active_record)

require "minitest/autorun"
