var Full = document.querySelector(".Full");                 // Skill Container is the entire block
var Half = document.querySelectorAll(".Half");              // Skill Sub Container is half the block
var Quarter = document.querySelectorAll(".Quarter");        // Skill Container is the entire block

MakeAllQuartersInvisible = function() {                     // Makes all the quarters disappear
    for (var i = 0; i < Quarter.length; ++i){
        Quarter[i].classList.toggle('Invisible');
    }
}

HalfClickEffect = function(index) {                         // Makes only the indexed half visible
    for (var i = 0; i < Half.length; ++i){
        Half[i].classList.toggle('Invisible');
    }
    Half[index].classList.remove('Invisible');
    Half[index].classList.toggle('HalfClickEffect');
}

UpperHalf = function(){                                     // For the upper half quaters.
    MakeAllQuartersInvisible();
    this.classList.remove('Invisible');
    this.classList.toggle('QuarterClickEffect');
    HalfClickEffect(0);

    var HiddenCells = this.querySelectorAll('.HiddenCell');
    for (var i = 0; i < HiddenCells.length; ++i){
        HiddenCells[i].classList.toggle('Invisible');
    }
}

LowerHalf = function(){                                     // For the lower half quarters
    MakeAllQuartersInvisible();
    this.classList.remove('Invisible');
    this.classList.toggle('QuarterClickEffect');
    HalfClickEffect(1);

    var HiddenCells = this.querySelectorAll('.HiddenCell');
    for (var i = 0; i < HiddenCells.length; ++i){
        HiddenCells[i].classList.toggle('Invisible');
    }
}

HoverEffect = function (){
    for (var i = 0; i < Quarter.length; ++i){
        Quarter[i].classList.remove('HoverEffect');
    }
    this.classList.add('HoverEffect');
}

for (var i = 0; i < Quarter.length; ++i){
    Quarter[i].addEventListener('click', (i < 2) ? UpperHalf : LowerHalf);
    Quarter[i].addEventListener('mouseover', HoverEffect);
}