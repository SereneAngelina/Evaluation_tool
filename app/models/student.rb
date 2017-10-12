class Student < ApplicationRecord
  belongs_to :batch
  has_many :evaluations, dependent: :destroy

  

  validates :name, presence: true
  validates :image_url, presence:true
end
