# frozen_string_literal: true

require 'test_helper'
require_relative '../support/person'

class ActiverecordEternalValidator::EternalValidatorTest < Minitest::Test
  def setup
    Person.validates :name, 'activerecord_eternal_validator/eternal': true
  end

  def test_it_validates_change_on_update
    person = Person.create!(name: 'hoge')
    person.name = 'bar'

    refute person.valid?
    refute_empty person.errors[:name]
  end

  def test_it_doesnot_validate_change_on_create
    person = Person.new(name: 'hoge')

    assert person.valid?
  end
end

class ActiverecordEternalValidator::EternalValidatorChangeFromNilTest < Minitest::Test
  def setup
    Person.validates :name, 'activerecord_eternal_validator/eternal': { change_from_nil: true }
  end

  def test_it_is_valid_when_name_was_nil
    person = Person.create!(name: nil)
    person.name = 'bar'

    assert person.valid?
  end

  def test_it_is_invalid_when_name_was_not_nil
    person = Person.create!(name: 'hoge')
    person.name = 'bar'

    refute person.valid?
  end
end
