class Activity < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true
  validates :status, presence: true

  belongs_to :routine
  has_many :attempts

  enum status: {
    active: 0,
    disabled: 1,
  }, _default: :active

end
