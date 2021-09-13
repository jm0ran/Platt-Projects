//
// Hangman Game
// Joseph Moran
// Due Date 9/17/21
//

//Defining variables to be used throughout the script including an Alphabet, the song list, and placeholder varaibles to be assigned later
let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
let guessList = ["DONDA CHANT", "HEARTLESS", "HEAVEN AND HELL", "STREET LIGHTS", "COLDEST WINTER", "ROBOCOP", "LOVE LOCKDOWN", "SAY YOU WILL", "BLOOD ON THE LEAVES", "BLACK SKINHEAD", "VIOLENT CRIMES", "RUNAWAY", "GENTLEMEN IN PARIS", "GHOST TOWN", "HEARD EM SAY", "THROUGH THE WIRE", "I THOUGHT ABOUT KILLING YOU", "HURRICANE", "HELL OF A LIFE", "LOST IN THE WORLD", "DEVIL IN A NEW DRESS", "ALL OF THE LIGHTS", "POWER", "FADE", "DARK FANTASY", "SAINT PABLO", "WOLVES", "FAMOUS", "ULTRALIGHT BEAM", "DIAMONDS FROM SIERRA LEONE", "TOUCH THE SKY", "HEY MAMA", "WE MAJOR", "ROSES", "BRING ME DOWN", "CRACK MUSIC", "GOLD DIGGER", "BITTERSWEET POETRY", "GOOD NIGHT", "THE GLORY", "FLASHING LIGHTS", "DEVIL IN A NEW DRESS", "SEE ME NOW", "CANT TELL ME NOTHING", "GOOD LIFE", "STRONGER", "CHAMPION", "GOOD MORNING", "JAIL", "PURE SOULS", "MOON", "COME TO LIFE", "BELIEVE WHAT I SAY", "OFF THE GRID", "THE NEW WORKOUT PLAN", "NEVER LET ME DOWN", "SPACESHIP", "ALL FALLS DOWN", "WE DONT CARE"];
let guessWord = new Array; //Used to hold the word to be guessed as an array
let currentGuess = new Array; //Used to hold the current state of guessing as an array
let guessRemain = new Number; //Used to hold the number of guesses the player has left
let attempts = 0; //Used to track number of attempts
let wins = 0; //Used to track number of wins

function renderGuess(guess) { //This function translates the current guess array into a cleaner string
    let newWord = new String; //Variable to hold converted string
    guess.forEach(char => { //Runs for each character/item in the guess array
        if (char == " "){ //If character is space
            newWord += "&nbsp&nbsp&nbsp"; //Use No-Break Spaces to make a visual difference for multiword sections
        }else{ //if not space
            newWord += char; //add character to newWord (the one being rendered)
        }
        newWord += " " //Add a space between each character
    })
    document.getElementById("wordCol").innerHTML = newWord; //Pushes new word into DOM
    updateStats(); //Update that stats for remaining guesses, attempts, and wins
}

function updateStats(){ //Function used to update the stats for remaining guesses, attempts, and wins
    document.getElementById("guessRemain").innerHTML = guessRemain; //update remaining guesses
    document.getElementById("attempts").innerHTML = attempts; //update amount of attempts
    document.getElementById("wins").innerHTML = wins; //update amount of wins
}

function renderButtons(){ //Used to render the buttons before each round
    document.getElementById("alphButtons").innerHTML = ""; //Clears button section
    alphabet.forEach(char => { //Runs for each character in the alphabet array created in the beginning
        document.getElementById("alphButtons").innerHTML += `<button type="button" id="${char}" onclick="guess('${char}');" class="btn btn-outline-primary">${char}</button>`; //Creates a button linked to the guess function for each letter
    })
}

function init() { //Initialize each round
    document.getElementById("hangPerson").src = "assets/4.jpg"; //resets hangman photo
    renderButtons(); //renders a fresh set of buttons
    guessRemain = 6; //Sets remaining guesses
    guessWord = new Array; //Clears out guessWord array
    currentGuess = new Array; //Clears out currentGuess array
    let random = Math.floor(Math.random()*guessList.length) //Derives a random number based off selection of songs
    for (let i = 0; i < guessList[random].length; i++){ //Loops for each character in the selected random word
        guessWord.push(guessList[random][i]); //pushes the characters in the word into the guessWord array, 1 character = 1 item
        if (guessList[random][i] != " "){ //If guess array isnt a space
            currentGuess.push("_") //Push an underscore for a placeholder
        }
        else{ //If else (is a space)
            currentGuess.push(" ") //Push a space so the program knows that this isn't something that needs to be guessed
        }
    } 
    guessList.splice(random, 1); //Removes word from array so it doesn't get picked again
    renderGuess(currentGuess); //Renders the current guess (at this point all underscores) for the user
}

function updateGuess(guessChar) { //Updates guess given a character
    guessWord.forEach((char, i) => { //Loops through each character in the word
        if (char == guessChar){ //If characters match
            currentGuess[i] = char; //Replace the corresponding index in currentGuess with the chracter just guessed
        }
    })
    renderGuess(currentGuess); //Renders the current guess
    if (!currentGuess.includes("_")){ //If the current guess no longer includes underscores the user has won
        wins += 1; //Add one to wins
        attempts += 1; //Add one to attempts
        updateStats(); //Update stats
        gameEnd(1); //End the game as a win
    }
}

function gameEnd(win){ //Function to handle the end of a game
    let message = new String; //Creates an empty variable for the message of either victory of defeat to be stored
    if (win == 1){ //If win
        message = "You Win" //Win message
    }else{ //If not win (loss)
        message = "You Lose" //Loss message
    }
    if(guessList.length < 1){ //If guessList is empty
        document.getElementById("alphButtons").innerHTML = `<h1>Out of Words</h1>` //Inform the user and prevent another round
    }else{ //If guess list is not empty
        document.getElementById("alphButtons").innerHTML = `<h1>${message}</h1><br><button type="button" onclick="init();" class="btn btn-primary">Play Again</button>` //Print the message and provide the option to play again

    }
}

function guess(guessChar) { //Function to handle the guesses, linked to each alphabet button
    if (guessWord.includes(guessChar)){ //If the character is in the word
        document.getElementById(guessChar).style.display = "none"; //Hide the button
        updateGuess(guessChar); //Update the current guess with the recieved character

    }else{ //If the character is not in the word
        document.getElementById(guessChar).style.display = "none"; //Hide the button
        let newImgSrc = "assets/" + (10 - (guessRemain - 1)) + ".jpg" //create path for next hangman image
        document.getElementById("hangPerson").src = newImgSrc; //Move 1 stage forward with the hangman image
        guessRemain -= 1; //Lower remaining guesses
        updateStats(); //Update stats
        if (guessRemain < 1){ //If out of guesses
            attempts += 1 //add an attemp
            renderGuess(guessWord); //Reveal the correct word
            gameEnd(0); //End the game
        }
    }
}


