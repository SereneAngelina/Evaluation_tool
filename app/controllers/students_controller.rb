class StudentsController < ApplicationController



def show
    @student = Student.find(params[:id])
end



def create
  @new_student = Student.new(student_params)
  @new_student.batch_id = params[:batch_id]
  @new_student.save
  redirect_to @new_student.batch

end

def destroy

    @student = Student.find(params[:id])
    @student.destroy
    redirect_to student_path(@student)
end




private
def student_params
    params.require(:student).permit(:name, :image_url, :batch_id)
end
end
