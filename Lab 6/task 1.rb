class Student
  attr_accessor :name,
                :need_hostel,
                :experience,
                :was_a_teacher,
                :graduated_from,
                :language_studied

  def initialize(name, need_hostel, experience, was_a_teacher, graduated_from, language_studied)
    @name = name
    @need_hostel = need_hostel
    @experience = experience
    @was_a_teacher = was_a_teacher
    @graduated_from = graduated_from
    @language_studied = language_studied
  end
end

def create_random_student
  name = %w[Liam Olivia Noah Emma Oliver Charlotte].sample
  need_hostel = [true, false].sample
  experience = rand(5)
  was_a_teacher = [true, false].sample
  graduated_from = %w[Stanford MIT Carnegie Oxford NUS Harvard].sample
  language_studied = %w[UKR ENG GER FRA CHN KOR].sample

  Student.new(name, need_hostel, experience, was_a_teacher, graduated_from, language_studied)
end

n = 50
students = Array.new(n).map! { create_random_student }
students.each { |student| p student }

puts "\nhow many people need a hostel"
p students.count { |student| student.need_hostel }

puts "\nlists of students who have worked as a teacher for 2 or more years:"
students.find_all {|student| student.experience >= 2 && student.was_a_teacher }.each { |student| p student }

puts "\nlists of those who graduated from Stanford:"
students.find_all {|student| student.graduated_from == "Stanford" }.each { |student| p student }

puts "\nlanguage groups lists:"
students.group_by {|student| student.language_studied }.each do |language, group|
  puts "\nStudied language group #{language}:"
  group.each { |student| p student }
end