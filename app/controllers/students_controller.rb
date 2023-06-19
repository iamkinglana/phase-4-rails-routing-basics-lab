class StudentsController < ApplicationController
def index
  students = Student.all
  render json: students

  grades=Student.grades.all
  render json: grades

  highest_grade = Student.order(grade: :desc).first

  render json:{
    first_name: highest_grade.first_name,
    last_name: highest_grade.last_name,
    grade: highest_grade
  }

end

end
