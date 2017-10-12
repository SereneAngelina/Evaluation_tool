class Evaluation < ApplicationRecord
  belongs_to :student

   validates :day, uniqueness: {scope: :student_id} 
end
