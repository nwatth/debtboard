require "administrate/field/base"

class DateField < Administrate::Field::Base
  def date
    I18n.localize(data.to_date, format: '%d/%m/%Y')
  end

  def to_s
    data
  end
end
