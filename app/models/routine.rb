class Routine < ApplicationRecord
  validates :user, presence: true, uniqueness: true
  belongs_to :user
  has_many :activities
end