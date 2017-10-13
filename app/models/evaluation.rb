class Evaluation < ApplicationRecord
  belongs_to :student

   validates :day, uniqueness: {scope: :student_id}
   validates :color_code, presence: true
   validates :remarks, presence: true
end
