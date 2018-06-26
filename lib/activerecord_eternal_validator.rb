# frozen_string_literal: true

require 'active_support/lazy_load_hooks'

require "activerecord_eternal_validator/version"

module ActiverecordEternalValidator
  ActiveSupport.on_load(:active_record) do
    require 'activerecord_eternal_validator/eternal_validator'
  end
end
