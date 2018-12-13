var Quarter = document.querySelectorAll(".Quarter");        // Skill Container is the entire block

HoverEffect = function (){
    for (var i = 0; i < Quarter.length; ++i){
        Quarter[i].classList.remove('HoverEffect');
    }
    this.classList.add('HoverEffect');
}

for (var i = 0; i < Quarter.length; ++i){
    Quarter[i].addEventListener('click', function(){
        for (var i = 0; i < Quarter.length; ++i){
            Quarter[i].classList.toggle('Invisible');
        }

        this.classList.remove('Invisible');
        this.classList.toggle('col-md-5');
        this.classList.toggle('col-md-10');
        this.classList.toggle('QuarterClickEffect');

        var HiddenCells = this.querySelectorAll('.HiddenCell');
        for (var i = 0; i < HiddenCells.length; ++i){
            HiddenCells[i].classList.toggle('Invisible');
        }
    });
    Quarter[i].addEventListener('mouseover', HoverEffect);
}