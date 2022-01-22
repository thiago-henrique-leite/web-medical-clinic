class CepValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.present? && value.to_s.match(/\A(\d{5})([-]{0,1})(\d{3})\Z/)

    record.errors[attribute] << (options[:message] || "não é válido")
  end
end
