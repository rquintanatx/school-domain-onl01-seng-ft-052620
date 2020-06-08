class School
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  attr_reader :roster
  
  def add_student(student_name, student_grade)
    if @roster.length == 0 || @roster.none? {|recorded_grade| recorded_grade== student_grade}
      @roster[student_grade] = []
      @roster[student_grade] << student_name
    else 
      @roster[student_grade] << student_name
    end 
  end 
end 