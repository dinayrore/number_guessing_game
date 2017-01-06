# User Input Statistics

The program entitled 'guessing_game.rb' is a basic number guessing game through which the computer picks a random number and the user must guess the number within five guesses. The computer will provide helpful hints as to how close the user is to the chosen number.  For example, if the user is running the program entitled 'guessing_game.rb' the following hints are provided: for a guess that is too low - "Your guess was too low. Try again: ", for a guess that is too high - "Your guess was too high. Try again: ", and for a guess that was already made - "You've guessed this number before, derp...".  If you are running the program entitled 'guessing_game_advanced.rb' even more hints are provided to direct the user as to how close their guess is to the actual number.  Hints are provided if the user guess is within ten, five, and one digit to the chosen number.  The program will repeatedly prompt the user for more guesses until the user has reached the guess limit of five, at which point the user will either be declared the winner should they have guessed the number and the loser if not.

## Getting Started

The instructions below will help you retrieve a copy of the project to run on your local machine through the Terminal application. Please see deployment for notes on how to deploy the project on a live system.  The instructions provided are for macbook users.

### Prerequisites

You may need to install or update the following software.

Find Terminal - to run program
  1. Open Finder. Finder is available in the Dock.
  2. Select Applications from the side bar menu.  Then unfold the Utilities folder.
  3. Double click on Terminal to initialize.

Install Homebrew - to store program files properly
  1. Open up Terminal.
  2. Run `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
  3. Run `brew doctor`

Install rbenv & ruby-build - to install and compile different versions of Ruby code language
  1. Open up Terminal
  2. Run `brew install ruby-build rbenv`
  3. Run `echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile`

Install ruby 2.3.1 - the latest version of Ruby
  1. Close and reopen Terminal. `rbenv install 2.3.1`
  2. After quite some time, run: `rbenv global 2.3.1`
  
Once you have completed the above installation processes your system is ready to launch the program!

## Deployment

Please complete the following procedure to run the program on a live system:
  1. Open Terminal.
  2. Change your directory to the one that which you would like to save this project. `$ cd folder_name`
  3. Then run the commands `$ git clone https://github.com/kteich88/number_guessing_game.git` and `$ cd number_guessing_game`
  4. Type `$ ruby guessing_game.rb` OR  `$ ruby guessing_game_advanced.rb` to run the program as described above.
  5. READ all instructions BEFORE adding input.

## Built With

* Atom

## Authors

* **Kristine Teichmann**

## Acknowledgments

* The Iron Yard - Durham
