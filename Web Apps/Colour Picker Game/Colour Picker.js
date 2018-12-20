// Tracking which mode
var numSquares = 6;

// Getting random colours
var colors = [];

// Picking the goal colour
var pickedColor;

// Setting the colour format to idsplay
var colorDisplay = document.getElementById("ColourDisplay");

// Showing correct or incorrect
var messageDisplay = document.getElementById("message");

// Selecting the header to change the colour once correct colour has been picked!
var header = document.querySelector("h1");

// Selecting the new colors button
var resetButton = document.querySelector("#reset");

// Looping through and assigning the colors
var squares = document.querySelectorAll('.square');

// Selecting the buttons that will be used to switch difficulty
var modeBtns = document.querySelectorAll(".mode");


init();
function init(){
    // Mode buttons
    for (var i = 0; i < modeBtns.length; ++i){
        modeBtns[i].addEventListener('click', function(){
            // Removing from all
            for (var i = 0; i < modeBtns.length; ++i){
                modeBtns[i].classList.remove('selected');
            }
    
            // Adding to selected
            this.classList.add('selected');
    
            if (this.textContent == 'Easy')
                numSquares = 3;
            else
                numSquares = 6;
    
            reset();
        });
    }

    // Necessary logic for squares
    for(var i = 0; i < squares.length; ++i){
        // Adding click listener
        squares[i].addEventListener("click", function(){
            var clickedColor = this.style.backgroundColor;
            console.log(clickedColor + ' ' + pickedColor);
            if (clickedColor == pickedColor){
                resetButton.textContent = "Play again?"
                messageDisplay.textContent = "Correct!"
                changeColor(pickedColor);
                header.style.backgroundColor = pickedColor;
            } else {
                this.style.backgroundColor = "#232323";
                messageDisplay.textContent = "Try again!"
            }
        });
    }

    reset();
}


function reset(){
    resetButton.textContent = 'New Colors';
    colors = generateRandomColors(numSquares);
    messageDisplay.textContent = "";    

    // Picking the goal colour
    pickedColor = pickRandomColor();

    // Setting the colour to pick in display
    colorDisplay.textContent = pickedColor;

    for(var i = 0; i < squares.length; ++i){
        if (colors[i]){
            // Adding initial colors to squares
            squares[i].style.backgroundColor = colors[i];
            squares[i].style.display = "Block";
        } else{
            squares[i].style.display = "None";
        }
    }

    header.style.backgroundColor = "steelblue";
}


resetButton.addEventListener("click", function(){
    reset();
});


function changeColor(color){
    for(var i = 0; i < squares.length; ++i){
        // Adding initial colors to squares
        squares[i].style.backgroundColor = color;
    }
}


function pickRandomColor(){
    var rand = Math.floor(Math.random() * colors.length);
    return colors[rand];
}


function generateRandomColors(num){
    var arr = [];

    for (var i = 0; i < num; ++i){
        arr.push(genearteColor());
    }

    return arr;
}


function genearteColor(){
    var r = Math.floor(Math.random() * 256);
    var g = Math.floor(Math.random() * 256);
    var b = Math.floor(Math.random() * 256);

    return "rgb(" + r + ", " + g + ", " + b + ")";
}