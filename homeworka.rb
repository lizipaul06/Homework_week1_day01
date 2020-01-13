# Create a class called Student that takes in a name (String) and a cohort (string - e.g “E18”, “G6”, etc) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns “I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> “I love Ruby”).


class Student

  attr_reader :name, :cohort
  # # for GETTERS

  attr_writer :name, :cohort
  #for SETTERS

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def student_talks()
    if name == @name && cohort == @cohort
      return "hello, I can talk"

    end
end

  def favourite_language(input_favourite_language)
  return  "I'm #{@name} and my favourite language is #{input_favourite_language}!"
end
end
