class Batch < ApplicationRecord
  has_many :students, dependent: :destroy

  validates :code, presence: true, uniqueness: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  def ask_question
    @batch = Batch.find(id)
    green_student = []
    red_student = []
    yellow_student = []
    @batch.students.each do |student|

      if !student.evaluations.any?
        red_student.push(student)
      else
      student.evaluations.last(1).each do |student_evaluation|

        if student_evaluation.color_code === "green"
          green_student.push(student)
       elsif student_evaluation.color_code === "red"
          red_student.push(student)
        elsif student_evaluation.color_code === "yellow"
          yellow_student.push(student)

        end
      end

      end
    end
    random_pick = rand()
    case
    when random_pick <= 0.17
      return " " if !green_student.any?
      green_student.sample
    when random_pick <= 0.50
      return " " if !yellow_student.any?
      yellow_student.sample
    when random_pick <= 1.0
      return " " if !red_student.any?
      red_student.sample

    end



  end


end
