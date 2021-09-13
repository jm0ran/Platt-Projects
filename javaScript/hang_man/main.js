let colors = ["RED", "GREEN", "BLUE", "YELLOW", "ORANGE"]
let guessWord = new Array;
let currentGuess = new Array;


function renderGuess(guess) {
    let newWord = new String;
    guess.forEach(char => {
        newWord += char;
        newWord += " "
    })
    document.getElementById("wordCol").innerHTML = newWord;
}

function grabRandom() {
    guessWord = new Array;
    currentGuess = new Array;
    let random = Math.floor(Math.random()*colors.length)
    for (let i = 0; i < colors[random].length; i++){
        guessWord.push(colors[random][i]);
        currentGuess.push("_")
    } 
    colors.splice(random, 1);
    console.log(guessWord);
    console.log(currentGuess)
    console.log(colors);
    renderGuess(currentGuess);
}

function updateGuess(guessChar) {
    guessWord.forEach((char, i) => {
        if (char == guessChar){
            currentGuess[i] = char;
        }
    })
    renderGuess(currentGuess);
    if (!currentGuess.includes("_")){
        alert("victory");
    }

}

function guess(guessChar) {
    if (guessWord.includes(guessChar)){
        updateGuess(guessChar);
    }else{
        console.log("False");
    }
}


