class EvaluationsController < ApplicationController


  def create
    if params[:save_next]
    @student = Student.find(params[:student_id])
    @new_evaluation = Evaluation.new(evaluation_params)
    @new_evaluation.student_id = params[:student_id]
        if  @new_evaluation.save
            @student_next = Student.where('id > ?', params[:student_id]).first
            redirect_to batch_student_path(@student_next.batch, @student_next.id)
        else
          redirect_to @student.batch, notice: 'Please check the details'
        end

    else
    @student = Student.find(params[:student_id])
    @new_evaluation = Evaluation.new(evaluation_params)
    @new_evaluation.student_id = params[:student_id]
       if @new_evaluation.save
         redirect_to @student.batch
       else
         redirect_to @student.batch, notice: 'Please check the details'
       end
  end
end

def edit
  @student = Student.find(params[:student_id])
  @evaluation = Evaluation.find(params[:id])
end

def update
    @evaluation = Evaluation.find(params[:id])

    if @evaluation.update_attributes(evaluation_params)
      redirect_to @evaluation.student, notice: 'Successfully updated'
    else
      redirect_to @evaluation.student, notice: 'Please check the details'
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
