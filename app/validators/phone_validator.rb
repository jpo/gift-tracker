class PhoneValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /^\d{10}$/
      record.errors[attribute] << (options[:message] || "invalid phone number")
    end
  end
end
