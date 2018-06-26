# frozen_string_literal: true

module ActiverecordEternalValidator
  class EternalValidator < ::ActiveModel::EachValidator
    def initialize(option)
      option.merge!(on: :update)
      super
    end

    def validate_each(record, attribute, value)
      if record.send("#{attribute}_changed?")
        record.errors.add(attribute, 'cannot be changed.')
      end
    end
  end
end
