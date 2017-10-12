class Student < ApplicationRecord
  belongs_to :batch
  has_many :evaluations, dependent: :destroy

  mount_uploader :image_url, ImageUploader

  validates :name, presence: true
  validates :image_url, presence:true
end
