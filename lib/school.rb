class School
  attr_accessor :roster, :student_name, :school_name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  def grade(student_grade) #part 3
     roster[student_grade]
   end

   def sort  #part 4
     sorted = {} 
     roster.each do |grade, students| #iterate through each grade and student
       sorted[grade] = students.sort #grade is the key in the sorted hash. Value is the students sorted in ABC order.
     end
     sorted #the new sorted roster.
   end
 end
