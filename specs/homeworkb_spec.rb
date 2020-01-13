require('minitest/autorun')
require('minitest/reporters')
require_relative('../homework_b')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest:: Test

#test GETTERS:
def setup
  @team_1 = Team.new("Tigers", ["Stewart", "Mark", "Steve", "Tim"], "Lilith")
end

def test_team_name
  assert_equal("Tigers", @team_1.team_name)
end

def test_players
  assert_equal(["Stewart", "Mark", "Steve", "Tim"], @team_1.players)
end

def test_coach
  assert_equal("Lilith", @team_1.coach)
end

def test_add_new_player()
  assert_equal(["Stewart", "Mark", "Steve", "Tim", "Ian"], @team_1.add_new_player("Ian"))
end

def test_win_or_loss
  assert_equal(1, @team_1.win_or_loss("won"))

end
def test_does_player_exist
  assert_equal("Tim", @team_1.does_player_exist("Tim"))
end


end
