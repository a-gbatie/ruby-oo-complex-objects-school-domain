# code here!
class School
attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, student_grade)
        roster[student_grade] ||= []
        roster[student_grade] << student_name
        # new_student = @roster.add_student()
        # @roster << student_name
        # @roster << student_grade
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        roster.each_value {|student_arr| student_arr.sort!}    
    end

    
end