class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = set_student
    student_path(@student)
  end

  def activate
    student = Student.find(params[:id])
    student.update(active: !student.active)
    redirect_to student_path(student)
  end

  # def patch
  #   student = set_student
  #   student.update(active: !student.active)
  #   student_path(student)
  # end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
