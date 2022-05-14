class Attempt < ApplicationRecord
  validates :result, presence: true

  belongs_to :activity

  enum result: {
    in_process: 0,
    failed: 1,
    success: 2,
  }, _default: :in_process
end

