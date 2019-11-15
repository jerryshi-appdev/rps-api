class ApplicationController < ActionController::Base
  def play_rock
    moves = ["rock", "paper", "scissors"]

    computer_move = moves.sample
    
    if computer_move == "rock"
      outcome = "tied"
    elsif computer_move == "paper"
      outcome = "lost"
    elsif computer_move == "scissors"
      outcome = "won"
    end

    full_message = "You played rock. They played " + computer_move + ". You " + outcome + "!"

    render({ :plain =>  full_message })
  end
  def play_paper
    moves = ["rock", "paper", "scissors"]

    computer_move = moves.sample
    
    if computer_move == "rock"
      outcome = "won"
    elsif computer_move == "paper"
      outcome = "tied"
    elsif computer_move == "scissors"
      outcome = "lost"
    end

    full_message = "You played paper. They played " + computer_move + ". You " + outcome + "!"

    render({ :plain =>  full_message })
  end
  def play_scissors
    moves = ["rock", "paper", "scissors"]

    computer_move = moves.sample
    
    if computer_move == "rock"
      outcome = "lost"
    elsif computer_move == "paper"
      outcome = "won"
    elsif computer_move == "scissors"
      outcome = "tied"
    end

    full_message = "You played scissors. They played " + computer_move + ". You " + outcome + "!"

    render({ :plain =>  full_message })
  end
    def homepage
    date = Date.today.strftime("%A")
    full_message = "Today is " + date + ".
Rock beats Scissors, Paper beats Rock, Scissors beats Paper.
Point your browser at /rock, /paper, or /scissors to play the game."

    render({ :plain =>  full_message })
  end
end
