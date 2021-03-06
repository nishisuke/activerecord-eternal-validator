# frozen_string_literal: true

require 'active_record'

class Person < ActiveRecord::Base
  establish_connection adapter: 'sqlite3', database: 'activerecord_eternal_validator_test.db'
  connection.create_table table_name, force: true do |t|
    t.string :name
  end
end
