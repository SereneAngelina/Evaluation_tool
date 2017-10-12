class Batch < ApplicationRecord
  has_many :students, dependent: :destroy

  validates :code, presence: true, uniqueness: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  def ask_question
    @batch = Batch.find(id)
    green_student = []
    red_student = []
    orange_student = []
    @batch.students.each do |student|
      student.evaluations.last(1).each do |student_evaluation|

        if student_evaluation.color_code === "green"
          green_student.push(student)
       elsif student_evaluation.color_code === "red"
          red_student.push(student)
        elsif student_evaluation.color_code === "orange"
          orange_student.push(student)
        else
          red_student.push(student)
        end

      end
    end
    random_pick = rand()
    puts random_pick
    case
    when random_pick <= 0.17
      green_student.sample
    when random_pick <= 0.50
      orange_student.sample
    when random_pick <= 1.0
      red_student.sample

    end



  end


end
