class Sch < ApplicationRecord
  validates :title, presence: true, length:{maximum:30}
  validates :sday, presence: true
  validates :eday, presence: true, unless: :daycheck
  validates :memo, length:{maximum: 500}
  def daycheck
    if sday and eday != nil
      errors.add('eday', '不正') if sday > eday
    end
  end
end
