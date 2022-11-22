class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        arry = Student.all.sort_by { |student| student.grade}.reverse
        render json: arry
    end
    def highest_grade
        arry = Student.all.sort_by { |student| student.grade}.last
        render json: arry
    end
end
