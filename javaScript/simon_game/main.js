//
//Simon Game
//Joseph Moran
//Date Due: 2/26/2021
//

let game = //This is the main object in the Simon Game, putting everything in one object was a bad idea, it didn't really cause problems so to say, but it was a waste of time because everything was in the same object
{
	state: 2, //State 1: Open to user input, State 2: Locked from user input
	gamePattern: [], //Creates a property to store the Game's recorded pattern in
	playerPattern:[], //Creates a property to store the player's pattern in
	playerStatus : 1, // Creates a status for player that will be used across program 1 = safe (Hasn't made any mistakes, but has not comlpleted Pattern), 2 = won (Fully completed that instances pattern);
	replayProgress: 0, //Creates a property to track replay progress
	playerProgress: 0, //Creates a property to track player progress
	clearButtons: function(user) //Method to clear all buttons, test for game state if user
	{
		let runAllow = false; //Defines and sets a default value for the runAllow local variable
		if(user && game.state == 1) //If run for user and user input is accepted
		{
			runAllow = true; //global run variable
		}
		if (runAllow || !user) //If run is true or if not run by user
		{
			for (let x = 1; x <= 4; x++) //For all 4 images
			{
				document.getElementById(x).src = "assets/" + x + ".png";	//Set Image to original non-inverted image (inverted images are buttonNum followed by an i)
			}
		}

	},
	newMove: function() //Method that generates new moves and adds them to the gamePattern property
	{
		newMoveNum = Math.floor(4*(Math.random())) + 1; //Generates a random number from 0-4 that correlates to the new move 
		game.gamePattern.push(newMoveNum); //Adds this new move to the pattern array
		document.getElementById('level').innerHTML = 'Level:<br>' + game.gamePattern.length //Pushes the new level to the div with the ID "level" to be displayed
	},
	buttonClick: function(buttonNum) //Method for when button is clicked
	{
		if (game.state == 1) //If game state is 1 (open to user input)
		{
			game.playerPattern.push(buttonNum); //Adds the button choice to the playerPattern Method
			if (game.playerPattern[game.playerProgress] == game.gamePattern[game.playerProgress]) //If the playerMove and teh correlating game move are equal
			{	
				let audio = new Audio("assets/" + buttonNum + ".wav"); //Creates a new variable with audio correlating to button choice
				audio.play(); //Plays that audio
				game.clearButtons(false);
				document.getElementById(buttonNum).src = "assets/" + buttonNum + "i.png"; //Update button image to inverted image
				if (JSON.stringify(game.playerPattern) == JSON.stringify(game.gamePattern)) //Converts both arrays to strings and checks if they are identical to see if the player has won
				{
					game.playerStatus = 2; //Sets player status to 2 to indicate a successful round
					game.state = 2; //Locks user input
					setTimeout(game.clearButtons, 500, false) //Resets all the buttons back to normal after half a second
					for (let x = 1; x <= 4; x++) //Update all images to the inverted button to show that a round has been successful
					{
						document.getElementById(x).src = "assets/" + x + "i.png"; //Updates each image to it's inverted counterpart	
					}
					game.playerProgress = 0; //Resets player progress
					game.playerPattern = []; //resets player pattern
					game.newMove(); //Calls the method to run a newMove()
					setTimeout(game.replay, 300);//Calls the method to start the replay of the old game pattern plus the newly added move after 300 ms
				}
			}
			else //If the player makes a bad move and mismatches
			{
				game.state = 2; //locks game
				for (let x = 1; x <= 4; x++) //For all 4 buttons
				{
					document.getElementById(x).src = "assets/" + 2 + ".png"; //sets them to buttons with a red background to indicated failure
				}
				setTimeout(game.clearButtons, 1000, false) //Sets all the buttons back to normal after a second
				document.getElementById('startButton').innerHTML = "Restart"; //Changes text on begin button to restart now that first game is finished
				document.getElementById('startButton').disabled = false; //Enables restart button
				document.getElementById('startButton').classList.remove("disabled"); //Removes the disabled class from begin button
			}
			if (game.playerStatus == 1) //If player is safe (Has not lost yet)
			{
				game.playerProgress++;	//increment the playerProgess variable
			}
			else //if player has lost
			{
				game.playerStatus == 1 //reset playerStatus to 1 for a later round
			}

		}
	},
	replay : function() //Method taht replays the moves that have been generated for the computer
	{
		game.state = 2; //Locks game state during replay
		setTimeout(function() //Creates a setTimeout which is delayed 1 second
		{
			if (game.replayProgress < game.gamePattern.length) //If replayProgress is less that theg length of the gamePattern array (game is not finished)
			{
				document.getElementById(game.gamePattern[game.replayProgress]).src = "assets/" + game.gamePattern[game.replayProgress] + "i.png"; //set whatever button array is on to inverted color
				let audio = new Audio("assets/" + game.gamePattern[game.replayProgress] + ".wav"); //create new audio variable with corresponding file
				audio.play(); //play the audio
				setTimeout(game.clearButtons, 300, false);//After another 500 seconds reset all the buttons
				game.replayProgress++; //Increment replayProgress property
				game.replay() //call replay again to move to next move
			}
			else //if replay is finished
			{
				game.replayProgress = 0; //reset replayProgress for next run
				game.state = 1; //Unlock game and allow user input
				game.playerStatus = 1; //reset player status for incoming input
			}
		}, 500)
	},
	startGame: function() //method to start the game
	{
		document.getElementById('startButton').disabled = true; //Disables start button
		document.getElementById('startButton').classList.add("disabled"); //Adds disabled class
		game.playerPattern = []; //Resets player pattern
		game.gamePattern = []; //Resets game pattern
		game.playerProgress = 0; //Resets player progress
		game.state = 1; //Opens up game state for user input
		game.newMove(); //Generates first move
		game.replay(); //Replays first move to user
	}
}