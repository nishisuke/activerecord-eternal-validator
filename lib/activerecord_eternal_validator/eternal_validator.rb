# frozen_string_literal: true

module ActiverecordEternalValidator
  class EternalValidator < ::ActiveModel::EachValidator
    def initialize(options)
      options.merge!(on: :update)
      super
    end

    def validate_each(record, attribute, value)
      if record.attribute_changed?(attribute) && options[:change_from_nil] && record.attribute_was(attribute).nil?
        return
      end

      if record.send("#{attribute}_changed?")
        record.errors.add(attribute, 'cannot be changed.')
      end
    end
  end
end
