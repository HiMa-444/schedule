class Sch < ApplicationRecord
  validates :title, presence: true, length:{maximum:30}
  validates :sday, presence: true, numericality: true, length:{is: 8}
  validates :eday, presence: true, numericality: true, length:{is: 8}
  validates :memo, length:{maximum: 500}
end
