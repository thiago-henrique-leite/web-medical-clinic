class PhoneValidator < ActiveModel::EachValidator
  PHONE_FORMAT = /^\(([14689][1-9]|[23][12478]|[357][1345]|77|79)\) (9\d{4}|[2-9]\d{3})\-?\d{4}$/
  AREA_CODE_FORMAT = /^([14689][1-9]|[23][12478]|[357][1345]|77|79)$/
  NUMBER_FORMAT = /^(9\d{4}|[2-9]\d{3})\d{4}$/

  def validate_each(record, attribute, value) # rubocop:todo Metrics/CyclomaticComplexity
    default_message = "não é um telefone válido"

    case attribute
    when :phone
      if value.present? && !value.match(PHONE_FORMAT)
        record.errors[attribute] << (options[:message] || default_message)
      end
    when :area_code
      if value.present? && !value.match(AREA_CODE_FORMAT)
        record.errors[attribute] << (options[:message] || default_message)
      end
    when :number
      if value.present? && !value.match(NUMBER_FORMAT)
        record.errors[attribute] << (options[:message] || default_message)
      end
    else
      raise NotImplementedError
    end
  end
end
