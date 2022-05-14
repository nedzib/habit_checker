class Activity < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :repetition, presence: true
  validates :repetition_spacing, presence: true
  validates :icon, presence: true
  validates :status, presence: true

  belongs_to :routine
  has_many :attempts

  enum status: {
    active: 0,
    disabled: 1,
  }, _default: :active

  enum repetition: {
    every_day: 0,
    every_week: 1,
    every_month: 2,
    every_year: 3,
  }
end
