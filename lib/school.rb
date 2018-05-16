require 'pry'

class School

  attr_accessor :roster, :student
  attr_reader :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}

  end

  def add_student(student_name, grade)
    if !@roster.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def grade(grade)
    if !@roster.include?(grade)
      []
    else
      @roster[grade].map do |name|
        name
      end
    end
  end

  def sort
      @roster.each do |grade, students|
        students.sort!
      end

  end

end

my_school = School.new("Bensalem High School")

my_school.add_student("Ray Cianni", 9)
my_school.add_student("Tom Jones", 9)
my_school.add_student("Brooke Shields", 9)

my_school.add_student("Little Bo Peep", 10)
my_school.add_student("Humpty Dumpty", 10)

arr = my_school.grade(9)

my_school.sort
