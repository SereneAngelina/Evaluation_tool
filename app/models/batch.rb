class Batch < ApplicationRecord
  has_many :students, dependent: :destroy

  validates :code, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  def progress_green
    @green_code = 0
    @batch.students.each do |student|
      student.evaluations.last(1).each do |student_evaluation|
        if student_evaluation.color_code === "green"
          @green_code = @green_code + 1
        end
      end
    end
        @green_code

  end
end
