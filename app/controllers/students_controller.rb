class StudentsController < ApplicationController

  def create
   @new_student = Student.new(student_params)
   @new_student.batch_id = params[:batch_id]
   @new_student.save
   redirect_to @new_student.batch
end

def destroy
    @batch = Batch.find(params[:batch_id])
    @student = @batch.students.find(params[:id])
    @student.destroy
    redirect_to batch_path(@batch)
end


private
def student_params
    params.require(:student).permit(:name, :image_url, :batch_id)
end
end
