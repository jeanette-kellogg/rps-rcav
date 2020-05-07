class ApplicationController < ActionController::Base
  # Add your actions below this line
  # ================================

    def homepage
      render({ :plain => "Hello, world!" })
    end
    
    def play_rock
      moves = ["rock", "paper", "scissors"]
      @comp_move = moves.sample

      if @comp_move == "rock"
        @outcome = "tied"
      elsif @comp_move == "paper"
        @outcome = "lost"
      elsif @comp_move == "scissors"
        @outcome = "won"
      end
      render({ :template => "game_templates/user_rock.html.erb" })  
    end

    def play_paper
      moves = ["rock", "paper", "scissors"]
      @comp_move = moves.sample

        if @comp_move == "rock"
          @outcome = "tied"
        elsif @comp_move == "paper"
          @outcome = "lost"
        elsif @comp_move == "scissors"
          @outcome = "won"
        end
        render({ :template => "game_templates/user_paper.html.erb" })  
    end

    def play_scissors
      moves = ["rock", "paper", "scissors"]
       @comp_move = moves.sample

        if @comp_move == "rock"
          @outcome = "tied"
        elsif @comp_move == "paper"
          @outcome = "lost"
        elsif @comp_move == "scissors"
          @outcome = "won"
        end
        render({ :template => "game_templates/user_scissors.html.erb" })  
    end
       
  end
