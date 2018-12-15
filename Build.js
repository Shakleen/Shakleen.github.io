// Creating the main sub parts of the attribute.
$('.attribute-container').html('<div class="attribute-header"></div><div class="attribute-content"></div>');


// Working with the header portion
$('.attribute-header').html('<h1></h1><p></p>');
$('.attribute-header').addClass('text-center bg-dark text-white col-12');
$('h1').addClass('HeadingTitle');
$('p').addClass('HeadingParam');
var AttributeTitles = ['Skills'] //, 'Projects', 'Achievements'];
var AttributeParagraphs = ['My superpowers'] //, 'Some cool things I\'ve built', 'Things I\'ve earned'];
for (var i = 0; i < AttributeTitles.length; ++i){
    $($('.HeadingTitle')[i]).text(AttributeTitles[i]);
    $($('.HeadingParam')[i]).text(AttributeParagraphs[i]);
}


// Working with the content portion
$('.attribute-content').addClass('Half container-fluid row justify-content-center text-center');
$('.Half').html('<div class="Quarter col-10 col-md-5"></div><div class="Quarter col-10 col-md-5"></div><div class="Quarter col-10 col-md-5"></div><div class="Quarter col-10 col-md-5"></div>');
$('.Quarter').html('<h1></h1><div class="row octar"></div>');
$('.octar').html('<div class="col-3 octar-val"></div><div class="col-3 octar-val"></div><div class="col-3 octar-val"></div><div class="col-3 octar-val"></div>');
$('.octar-val').html('<img class="img-fluid rounded-circle img-cells"><p class="param-cells">C/C++</p>');
var octarImages = [
    "Photos/C++.jpg",
    "Photos/java.jpg",
    "Photos/Python.jpg",
    "Photos/JavaScript.jpg",
    "Photos/Machine Learning.png",
    "Photos/Game Dev.png",
    "Photos/3D Modeling.png",
    "Photos/Android.png",
    "Photos/Problem Solving.png",
    "Photos/SQL.png",
    "Photos/Linux Shell.png",
    "Photos/Source Control",
    "Photos/VS Code.jpeg",
    "Photos/IntelliJ IDEA.jpeg",
    "Photos/GitHub.png",
    "Photos/Unreal Engine.jpg"
];
var octarParagraph = [
    "C/C++",
    "Java",
    "Python",
    "JavaScript",
    "Machine Learning",
    "Game Dev",
    "3D Modelling",
    "Android Dev",
    "Problem Solving",
    "SQL",
    "Source Control",
    "VS Code",
    "IntelliJ IDEA",
    "GitHUB",
    "UE4"
]
for (var i = 0; i < octarImages.length; ++i){
    $($('.img-cells')[i]).attr('src', octarImages[i]);
    $($('.param-cells')[i]).text(octarParagraph[i]);
}