require('minitest/autorun')
require('minitest/reporters')
require_relative('../homeworka')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest:: Test

#test GETTERS:
def setup
  @student = Student.new("Niall", "G15")
end

def test_name
  assert_equal("Niall", @student.name)
end

def test_cohort
assert_equal("G15", @student.cohort)
end

def test_set_name

  @student.name = "Jordan"
  assert_equal("Jordan", @student.name)
end

def test_set_cohort
  @student.cohort = "G16"
  assert_equal("G16", @student.cohort)
end

def test_student_talks()
  assert_equal("hello, I can talk", @student.student_talks)
end

def test_student_fave_language()
  @student_lizzie = Student.new("Lizzie", "G17")
  assert_equal("I'm Lizzie and my favourite language is Definitely not ruby!", @student_lizzie.favourite_language("Definitely not ruby"))
end

end
