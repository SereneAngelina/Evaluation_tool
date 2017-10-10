class Batch < ApplicationRecord
  has_many :students, dependent: :destroy

  validates :code, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true
end
