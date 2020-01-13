require('minitest/autorun')
require('minitest/reporters')
require_relative('../homework_c')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest:: Test

#test GETTERS:
def setup
 @books = Library.new([{
     title: "lord_of_the_rings",
     rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
     }
   },
   {
     title: "Harry_potter",
     rental_details: {
      student_name: "mark",
      date: "02/08/16"}
   },
   {
     title: "50_shadies",
     rental_details: {
      student_name: "Mel",
      date: "03/09/16"
     }}]
   );
end

def test_books
  assert_equal({
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      },
      {
        title: "Harry_potter",
        rental_details: {
         student_name: "mark",
         date: "02/08/16"}
      },
      {
        title: "50_shadies",
        rental_details: {
         student_name: "Mel",
         date: "03/09/16"
        }
      }, @books)
end
end
