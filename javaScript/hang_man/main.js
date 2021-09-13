let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
let guessList = ["DONDA CHANT", "HEARTLESS", "HEAVEN AND HELL", "STREET LIGHTS", "COLDEST WINTER", "ROBOCOP", "LOVE LOCKDOWN", "SAY YOU WILL", "BLOOD ON THE LEAVE", "BLACK SKINHEAD", "VIOLENT CRIMES", "RUNAWAY", "GENTLEMEN IN PARIS", "GHOST TOWN", "HEARD EM SAY", "THROUGH THE WIRE", "I THOUGHT ABOUT KILLING YOU", "HURRICANE", "HELL OF A LIFE", "LOST IN THE WORLD", "DEVIL IN A NEW DRESS", "ALL OF THE LIGHTS", "POWER", "FADE", "DARK FANTASY", "SAINT PABLO", "WOLVES", "FAMOUS", "ULTRALIGHT BEAM", "DIAMONDS FROM SIERRA LEONE", "TOUCH THE SKY", "HEY MAMA", "WE MAJOR", "ROSES", "BRING ME DOWN", "CRACK MUSIC", "GOLD DIGGER", "BITTERSWEET POETRY", "GOOD NIGHT", "THE GLORY", "FLASHING LIGHTS", "DEVIL IN A NEW DRESS", "SEE ME NOW", "CANT TELL ME NOTHING", "GOOD LIFE", "STRONGER", "CHAMPION", "GOOD MORNING", "JAIL", "PURE SOULS", "MOON", "COME TO LIFE", "BELIEVE WHAT I SAY", "OFF THE GRID", "THE NEW WORKOUT PLAN", "NEVER LET ME DOWN", "SPACESHIP", "ALL FALLS DOWN", "WE DONT CARE"];
let guessWord = new Array;
let currentGuess = new Array;
let guessRemain = new Number;
let attempts = 0;
let wins = 0;



function renderGuess(guess) {
    let newWord = new String;
    guess.forEach(char => {
        if (char == " "){
            newWord += "&nbsp&nbsp&nbsp";
        }else{
            newWord += char;
        }
        newWord += " "
    })
    document.getElementById("wordCol").innerHTML = newWord;
    updateStats();

}
function updateStats(){
    document.getElementById("guessRemain").innerHTML = guessRemain;
    document.getElementById("attempts").innerHTML = attempts;
    document.getElementById("wins").innerHTML = wins;
}

function renderButtons(){
    document.getElementById("alphButtons").innerHTML = "";
    alphabet.forEach(char => {
        document.getElementById("alphButtons").innerHTML += `<button type="button" id="${char}" onclick="guess('${char}');" class="btn btn-outline-primary">${char}</button>`;
    })
}

function init() {
    document.getElementById("hangPerson").src = "assets/4.jpg";
    renderButtons();
    guessRemain = 6;
    guessWord = new Array;
    currentGuess = new Array;
    let random = Math.floor(Math.random()*guessList.length)
    for (let i = 0; i < guessList[random].length; i++){
        guessWord.push(guessList[random][i]);
        if (guessList[random][i] != " "){
            currentGuess.push("_")
        }
        else{
            currentGuess.push(" ")
        }
    } 
    guessList.splice(random, 1);
    console.log(guessWord);
    console.log(currentGuess)
    console.log(guessList);
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
        wins += 1;
        attempts += 1;
        gameEnd(1);
    }
}

function gameEnd(win){
    let message = new String;
    if (win == 1){
        message = "You Win"
    }else{
        message = "You Lose"
    }
    if(guessList.length < 1){
        document.getElementById("alphButtons").innerHTML = `<h1>Out of Words</h1>`
    }else{
        document.getElementById("alphButtons").innerHTML = `<h1>${message}</h1><br><button type="button" onclick="init();" class="btn btn-primary">Play Again</button>`

    }
}

function guess(guessChar) {
    if (guessWord.includes(guessChar)){
        console.log(guessChar);
        document.getElementById(guessChar).style.display = "none";
        updateGuess(guessChar);

    }else{
        document.getElementById(guessChar).style.display = "none";
        let newImgSrc = "assets/" + (10 - (guessRemain - 1)) + ".jpg"
        document.getElementById("hangPerson").src = newImgSrc;
        console.log("False");
        guessRemain -= 1;
        updateStats();
        if (guessRemain < 1){
            attempts += 1
            renderGuess(guessWord);
            gameEnd(0);
        }
    }
}


