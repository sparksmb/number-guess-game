# number-guess-game
Create a simple game as an exercise to gain experience with Ruby on Rails

## Rules: 

Guess a number between 1 and 5.  If correct output "Hooray" else "Wrong".  Keep track of the number of correct vs incorrect guesses out of the number of attempts.

## Actors

- Player
- Game

## Use cases

- As a player I need to guess a number between 1 and 5
- As a game I need to generate a random number between 1 and 5
- As a part of the game I need to compute the game result given a number guess
- As a player I need feed back to know the game result
- As a player I need statistics on how many correct and incorrect guesses I've made out of the total number of attempts

## Flow

- Prompt player to guess a number between 1 and 5
- Capture input 
- Validate input
  - ensure input is a number
  - if not prompt user to input a number
- Generate a random number between 1 and 5
- Given a game and a guess Compute game result
- Display game result
- Display game statistics
- Repeat steps

## Classes

### *Game*

    +Value: number
    +Guess: number
    +Result: string
    +IsCorrect(): bool
    +GenerateValue(): number

### *GameStats*

    +Games: [Game]
    +Add(game: Game)
    +GetGameCount(): number
    +GetWinCount(): number
    +GetLossCount(): number

### *ComputeGameResult*

    +ComputeGameResult(guess: number, game: Game)
    +Execute(): Game

### *RecordGameResult*
*throws exception when Game.Result is null*

    +Execute(game: Game): void 
