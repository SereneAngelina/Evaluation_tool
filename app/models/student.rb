class Student < ApplicationRecord
  belongs_to :batch

  validates :name, presence: true
  validates :image_url, presence:true
end
