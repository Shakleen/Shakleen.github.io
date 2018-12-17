// Creating the main sub parts of the attribute.
$('.attribute-container').html('<div class="attribute-header"></div><div class="attribute-content"></div>');


// Working with the header portion
var heading = '<h1 class="HeadingTitle"></h1><p class="HeadingParam"></p><div class="HeadingDesc d-flex justify-content-center"></div>'
$('.attribute-header').html(heading);
$('.attribute-header').addClass('text-center bg-dark text-white col-12');
var AttributeTitles = ['Skills', 'Projects', 'Education', 'Achievements'];
var AttributeParagraphs = ['My superpowers', 'Some cool things I\'ve built', 'My Source of knowledge', 'Things I\'ve earned'];
for (var i = 0; i < AttributeTitles.length; ++i){
    $($('.HeadingTitle')[i]).text(AttributeTitles[i]);
    $($('.HeadingParam')[i]).text(AttributeParagraphs[i]);
}

// Working with heading descriptions
$('.HeadingDesc').html('<p class="HeadingDescC"></p><p class="HeadingDescF"></p><p class="HeadingDescP"></p>');
$('.HeadingDescC').addClass('text-success HeadingParam px-2');
$('.HeadingDescF').addClass('text-warning HeadingParam px-2');
$('.HeadingDescP').addClass('text-danger HeadingParam px-2');
var headingDesc = [
    'Comfortable',
    'Familiar',
    'Prior Experience',
    'Large Scale',
    'Medium Scale',
    'Small Scale'
]
for (var i = 0; i < headingDesc.length; i += 3){
    $($('.HeadingDescC')[i/3]).text(headingDesc[i]);
    $($('.HeadingDescF')[i/3]).text(headingDesc[i+1]);
    $($('.HeadingDescP')[i/3]).text(headingDesc[i+2]);
}


// Working with the content portion
$('.attribute-content').addClass('Full container-fluid text-center');
var fullDiv = '<div class="Half"></div>';
$('.Full').html(fullDiv + fullDiv);

$('.Half').addClass('d-flex');
var halfDiv = '<div class="Quarter"></div>';
$('.Half').html(halfDiv + halfDiv);

$('.Quarter').html('<h1 class="QuarterHeading HeadingTitle"></h1><div class="row QuarterContent"></div>');

// Setting up the heading of each quarter
var QuarterHeadings = [
    'Languages I speak',
    'Industry Knowledge',
    'Special Abilities',
    'Tools of choice',
    'Machine Learning',
    'Application Development',
    'Game Development',
    'Web Development'
];


var QtrHeadings = $('.QuarterHeading');
for (var i = 0; i < QtrHeadings.length; ++i){
    // Setting up the headings of each quarter
    $(QtrHeadings[i]).text(QuarterHeadings[i]);

    // Setting up the quarter content

    // Skills portion
    if (i === 0){   // Languages
        HandleSkillsQuarter(
            [
                "Photos/C++.jpg","Photos/java.jpg","Photos/Python.jpg","Photos/JavaScript.jpg","Photos/Dart.png","Photos/Solidity.svg",
                "Photos/Kotlin.png","Photos/MatLAB.png","Photos/Flutter.png","Photos/firebase.png"
            ],
            [
                "C/C++","Java","Python","JavaScript","Dart","Solidity","Kotlin","MatLAB","Flutter","Firebase"
            ],
            [
                0, 0, 0, 0, 1, 1, 1, 1, 1, 1
            ],
            $($('.QuarterContent')[i])
        )
    } else if (i == 1) { // Industry knowledge
        HandleSkillsQuarter(
            [
                "Photos/Machine Learning.png","Photos/Game Dev.png","Photos/3D Modeling.png","Photos/Android.png",
                "Photos/IOT.png","Photos/Blockchain.png"
            ],
            [
                "Machine Learning","Game Dev","3D Modeling","Mobile Dev","IOT","Blockchain Dev"
            ],
            [
                0, 0, 0, 0, 1, 1
            ],
            $($('.QuarterContent')[i])
        )
    } else if (i == 2) { // Special Abilities
        HandleSkillsQuarter(
            [
                "Photos/Problem Solving.png","Photos/SQL.png","Photos/Linux Shell.png",
                "Photos/Source Control","Photos/Data Visualization.png","Photos/Photo Editing.png"
            ],
            [
                "Problem Solving", "Database Querying", "Linux Shell", "Source Control", 
                "Data Manipulation", "Photo Editing"
            ],
            [
                0, 0, 0, 0, 1, 1
            ],
            $($('.QuarterContent')[i])
        )
    } else if (i == 3) { // Tools of choice
        HandleSkillsQuarter(
            [
                "Photos/VS Code.jpeg", "Photos/IntelliJ IDEA.jpeg","Photos/GitHub.png","Photos/Unreal Engine.jpg",
                "Photos/Blender.png","Photos/Photoshop.png","Photos/Android Studio.jpg","Photos/Ubuntu.png"
            ],
            [
                "Visual Studio Code", "IntelliJ IDEA", "GitHUB", "Unreal Engine 4", "Blender", "Photochop CC",
                "Android Studio", "Ubuntu"
            ],
            [
                0, 0, 0, 0, 1, 1, 1, 1
            ],
            $($('.QuarterContent')[i])
        )
    } 

    // Projects portion
    if (i == 4){    // Machine Learning
        
    } else if (i == 5) {    // Application Development
        HandleProjectsQuarter(
            [
                "Photos/Project Medicinae.jpg",
                "https://www.fnasafety.com/wp-content/uploads/2017/05/classes.png"
            ],
            [
                "https://github.com/Shakleen/Project_Medicinae",
                "https://github.com/IshrakAbedin/Attendance-System"
            ],
            [
                "Project Medicinae",
                "Attendance System"
            ],
            [
                "Medium Scale (1 - 2 months)",
                "Medium Scale (1 - 2 months)"
            ],
            [
                "A java application for inputting, storing and backing up data in cloud.",
                "A java application for automating the process of taking attendance."
            ],
            [
                "Java, JavaFX, Oracle SQL, Google Drive API, CSS",
                "Java, JavaFX Google Drive API, CSS"
            ],
            $($('.QuarterContent')[i])
        );
    } else if (i == 6) {    // Game Development
        HandleProjectsQuarter(
            [
                "Photos/Project Bytes.jpg",
                "",
                ""
            ],
            [
                "https://github.com/Red-Rebels/ProjectBytes",
                "https://github.com/Shakleen/Pickup-Game",
                "https://github.com/Shakleen/Endless-Runner-Project-UE4"
            ],
            [
                "Project Bytes",
                "Battery and Bombs",
                "Endless Runner"
            ],
            [
                "Large Scale (4 - 5 months)",
                "Small Scale (2 - 3 weeks)",
                "Small scale (1 - 2 weeks)"
            ],
            [
                "A survival horror game developed using Unreal Engine 4 and C++.",
                "A survival game developed using C++ and Unreal Engine 4.",
                "An endless runner game developed using unreal engine 4 and its blueprint system."
            ],
            [
                "C++, Unreal Engine 4, AutoDesk Maya, GIMP 2, Adobe Premiere Pro",
                "C++, Unreal Engine 4, GIMP 2",
                "Unreal Engine 4"
            ],
            $($('.QuarterContent')[i])
        );
    }
} 

function HandleSkillsQuarter(QuarterContentImages, QuarterContentParagraph, HiddenCondition, QuarterObj){
    if (HiddenCondition.length !== QuarterContentImages.length || QuarterContentImages.length !== QuarterContentImages.length){
        alert("LENGTH NOT EQUAL - SKILLS");
    }

    var quarterDiv = '<div class="col-3 QuarterContent-val my-2">';
    var quarterDivHidden = '<div class="col-3 Invisible HiddenCell QuarterContent-val my-3">';

    for (var i = 0; i < HiddenCondition.length; ++i){
        var addition = '<img class="img-fluid rounded-circle img-cells" src="' + QuarterContentImages[i] + '">' +
                    '<p class="param-cells">' + QuarterContentParagraph[i] + '</p>' +
                    '</div>';

        if (HiddenCondition[i] === 0){
            $(QuarterObj).append(quarterDiv + addition);
        } else {
            $(QuarterObj).append(quarterDivHidden + addition);
        }
    }
}

function HandleProjectsQuarter(ImageSource, ProjectLink, ProjectName, ProjectScale, ShortDescription, ThingsUsed, QuarterObj){
    for (var i = 0; i < ImageSource.length; ++i){
        var string =    '<div class="col-lg-3 col-md-5 col-10 card px-0 text-left text-dark">' +
                        '<img class="card-img-top d-none d-md-block" src="' + ImageSource[i] + '" alt="Card image cap">' +
                        '<div class="card-body HiddenCell Invisible">' +
                            '<h5 class="card-title"><a href="' + ProjectLink[i] + '">' + ProjectName[i] + '</a></h5>' +
                            '<p class="card-text">Time to complete' + ProjectScale[i] + '</p>' + 
                            '<p class="card-text">' + ShortDescription[i] + '</p>' + 
                            '<p class="card-text">Key Components used:' + ThingsUsed[i] + '</p>' +
                        '</div>'
                    '</div>';
        
        $(QuarterObj).append(string);
    }
}


// Effects
$('.Quarter').on('click', function(){
    // 1. Collapse the adjacent quarter of the same half
    var sibliings = $(this).parent().children();

    for (var i = 0; i < sibliings.length; ++i){
        if (sibliings[i] !== this){
            $(sibliings[i]).toggleClass('ShrinkQuarter');
        } else {
            $(sibliings[i]).toggleClass('ExtendQuarter');
        }
    }
});

$('.Half').on('click', function(event){
    var sibliings = $(this).parent().children();

    for (var i = 0; i < sibliings.length; ++i){
        if (sibliings[i] !== this){
            $(sibliings[i]).toggleClass('ShrinkHalf');
        } else {
            $(sibliings[i]).toggleClass('ExtendHalf');
        }
    }
    $(this).find('div.HiddenCell').toggleClass('Invisible');
    event.stopPropagation();
});