# Now we would like you to make a class that represents a sports team.
#
# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach’s name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player’s name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.

class Team

attr_reader :team_name, :players, :coach
# # for GETTERS

attr_writer  :coach, :players, :team_name
#for SETTERS
@@score_count = 0

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach


      # def team_name()
      #   @team_name
      # end
      #
      # def players()
      #   @players
      # end
      #
      # def coach_name()
      #   @coach_name
      # end
      #
      # def set_coach_name(coach)
      #   @coach_name = coach
      # end
      def does_player_exist(player_name)
        for player in @players
          if player_name == player
            return player
          end
        end
     end

      def add_new_player(player)
         @players.push(player)

          end

      def win_or_loss(score)
        if score == "won"
       @@score_count +=1
       return @@score_count
     end
      end

    end
end
