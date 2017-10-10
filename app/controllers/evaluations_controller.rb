class EvaluationsController < ApplicationController


  def create
    if params[:save_next]
    @student = Student.find(params[:student_id])
    @new_evaluation = Evaluation.new(evaluation_params)
    @new_evaluation.student_id = params[:student_id]
    @new_evaluation.save
    @student_next = Student.where('id > ?', params[:student_id]).first
    redirect_to batch_student_path(@student_next.batch, @student_next.id)
  

    else
    @student = Student.find(params[:student_id])
    @new_evaluation = Evaluation.new(evaluation_params)
    @new_evaluation.student_id = params[:student_id]
    @new_evaluation.save
    redirect_to @student.batch

  end
end



  private

  def set_student
    @student = Student.find(params[:student_id])
  end

  def evaluation_params
      params.require(:evaluation).permit(:day, :color_code, :remarks, :student_id)
  end
end
