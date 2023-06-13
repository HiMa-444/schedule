class Sch < ApplicationRecord
  validates :title, presence: true, length:{maximum:30}
  validates :sday, presence: true
  validates :eday, presence: true
  validates :memo, length:{maximum: 500}
  validate :daycheck
  def daycheck
    errors.add('eday', '値が不正') if self.sday >= self.eday
  end
end
