require "pry"

class School
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  attr_reader :roster
  
  def add_student(student_name, student_grade)
    if @roster.length == 0 || @roster.none? {|recorded_grade, student_name| recorded_grade== student_grade}
      @roster[student_grade] = []
      @roster[student_grade] << student_name
    else 
      @roster[student_grade] << student_name
    end
  end
    
  def grade(student_grade)
    @roster[student_grade]  
  end
  
  def sort 
    sorted_roster = {}
    @roster.each do |student_grade, student_name_array|
      student_name_array = student_name_array.sort
      if sorted_roster.length == 0 || sorted_roster.none? {|recorded_grade, student_name| recorded_grade== student_grade}
        sorted_roster[student_grade] = student_name_array
      else 
        sorted_roster[student_grade] << student_name_array
      end
    end 
    sorted_roster
  end
  
end 