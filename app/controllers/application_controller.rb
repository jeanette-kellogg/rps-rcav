class ApplicationController < ActionController::Base
  # Add your actions below this line
  # ================================

    def homepage
      render({ :plain => "Hello, world!" })
    end
    
    def play_rock
      moves = ["rock", "paper", "scissors"]
      computer_move = moves.sample
      
      if computer_move == "rock"
        outcome = "tied"
      elsif computer_move == "paper"
        outcome = "lost"
      elsif computer_move == "scissors"
        outcome = "won"
        full_message = "You played rock. They played " + computer_move + ". You " + outcome + "!"
        render({ :plain =>  full_message })
    end

    def play_paper
      moves = ["rock", "paper", "scissors"]
      computer_move = moves.sample
      if computer_move == "paper"
        outcome = "tied"
      elsif computer_move == "scissors"
        outcome = "lost"
      elsif computer_move == "rock"
        outcome = "won"
        full_message = "You played rock. They played " + computer_move + ". You " + outcome + "!"
          render({ :plain =>  full_message })
    end

    def play_scissors
      moves = ["rock", "paper", "scissors"]
      computer_move = moves.sample
      if computer_move == "scissors"
        outcome = "tied"
      elsif computer_move == "rock"
        outcome = "lost"
      elsif computer_move == "paper"
        outcome = "won"

      full_message = "You played rock. They played " + computer_move + ". You " + outcome + "!"
      render({ :plain =>  full_message })
    end
       


  end
