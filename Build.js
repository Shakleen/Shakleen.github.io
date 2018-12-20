// ====================================================================================================
// Creating the main sub parts of each of the attributes.
// Here attribute means the different portions of the portfolio like skills, achievements etc.
// Each attribute container has two portions, attribute header and attribute content.
// The header will show the title of the attribute and a small line to indicate what it is.
// The header might also include additional info like descriptions of measurements of the attribute.  
// ====================================================================================================
var AttributeHeader = '<div class="attribute-header col-12"></div>';
var AttributeContent = '<div class="attribute-content content-full container-fluid p-2"></div>';
$('.attribute-container').html(AttributeHeader + AttributeContent);

// ====================================================================================================
// Working with the header portion
// First the title and the short line is added to the header.
// Then depending on the attribute the descriptions are added. 
// All the texts for an attribute can be found in the Attribute text variable.
// ====================================================================================================
var HeadingTitle = '<h1 class="HeadingTitle"></h1>';
var HeadingParam = '<p class="HeadingParam"></p>';
$('.attribute-header').html(HeadingTitle + HeadingParam);

// Handling header description information.
var HeadingDescC = '<span class="HeadingDescC text-success"></span>';
var HeadingDescF = '<span class="HeadingDescF text-warning"></span>';
var HeadingDescP = '<span class="HeadingDescP text-danger"></span>';
var HeadingDesc = '<p>' + HeadingDescC + HeadingDescF + HeadingDescP + '</div>';

// Content divisions
var fullDiv = '<div class="content-half d-flex"></div>';
var halfDiv = '<div class="Quarter"></div>';
var QuarterHeading = '<h1 class="quarter-heading"></h1>';
var QuarterContent = '<div class="row quarter-content align-middle"></div>';
var Quarter = QuarterHeading + QuarterContent;

var AttributeValues = [
    {   // 0. Attribute titles 
        0: 'Skills',
        1: 'Projects',
        2: 'Education',
        3: 'Achievements',
        4: 'Contact Information'
    },

    {   // 1. Attribute paragraphs
        0: 'My superpowers',
        1: 'Some cool things I\'ve built',
        2: 'My Source of knowledge',
        3: 'Things I\'ve earned',
        4: 'Let\s Talk!'
    },

    [   // 2. Attribute descriptions
        {1: 'Comfortable', 2: 'Familiar', 3: 'Prior Experience'},
        {1: 'Large Scale', 2: 'Medium Scale', 3: 'Small Scale'}
    ],
    
    [   // 3. Quarter Headings
        {0: 'Languages I speak', 1: 'Industry Knowledge', 2: 'Special Abilities', 3: 'Tools of choice'},
        {0: 'Machine Learning', 1: 'Application Development', 2: 'Game Development', 3: 'Web Development'},
        {0: 'Institutional Education', 1: 'Online Courses', 2: 'Practice Sites', 3: 'Helpful Sites'},
        {0: 'Contest History', 1: 'Honors and Awards', 2: 'Certifications', 3: 'Online awards'}
    ],
    
    [   // 4. Quarter content
        {   // 4.0 Skill
            0: {    // Language
                0: {'Photo': "Photos/C++.jpg",        'Name': "C/C++",         'Visibility': 0, 'Expertise': 1},
                1: {'Photo': "Photos/java.jpg",       'Name': "Java",          'Visibility': 0, 'Expertise': 1},
                2: {'Photo': "Photos/Python.jpg",     'Name': "Python",        'Visibility': 0, 'Expertise': 2},
                3: {'Photo': "Photos/JavaScript.jpg", 'Name': "JavaScript",    'Visibility': 0, 'Expertise': 2},
                4: {'Photo': "Photos/Dart.png",       'Name': "Dart",          'Visibility': 1, 'Expertise': 3},
                5: {'Photo': "Photos/Solidity.svg",   'Name': "Solidity",      'Visibility': 1, 'Expertise': 3},
                6: {'Photo': "Photos/Kotlin.png",     'Name': "Kotlin",        'Visibility': 1, 'Expertise': 3},
                7: {'Photo': "Photos/MatLAB.png",     'Name': "MatLAB",        'Visibility': 1, 'Expertise': 3},
                8: {'Photo': "Photos/Flutter.png",    'Name': "Flutter",       'Visibility': 1, 'Expertise': 3},
                9: {'Photo': "Photos/firebase.png",   'Name': "Firebase",      'Visibility': 1, 'Expertise': 3}
            },
            1: {    // Industry
                0: {'Photo': "Photos/Machine Learning.png", 'Name': "Machine Learning", 'Visibility': 0, 'Expertise': 1},             
                1: {'Photo': "Photos/Game Dev.png",         'Name': "Game Dev",         'Visibility': 0, 'Expertise': 1},    
                2: {'Photo': "Photos/3D Modeling.png",      'Name': "3D Modeling",      'Visibility': 0, 'Expertise': 2},            
                3: {'Photo': "Photos/Android.png",          'Name': "Mobile Dev",       'Visibility': 0, 'Expertise': 2},        
                4: {'Photo': "Photos/IOT.png",              'Name': "IOT",              'Visibility': 1, 'Expertise': 3},
                5: {'Photo': "Photos/Blockchain.png",       'Name': "Blockchain Dev",   'Visibility': 1, 'Expertise': 3}              
            },
            2 : {   // Special
                0: {'Photo': "Photos/Problem Solving.png",      'Name': "Problem Solving",  'Visibility': 0, 'Expertise': 1},             
                1: {'Photo': "Photos/SQL.png",                  'Name': "Database",         'Visibility': 0, 'Expertise': 1},    
                2: {'Photo': "Photos/Linux Shell.png",          'Name': "Linux Shell",      'Visibility': 0, 'Expertise': 2},            
                3: {'Photo': "Photos/Source Control",           'Name': "Source Control",   'Visibility': 0, 'Expertise': 2},        
                4: {'Photo': "Photos/Data Visualization.png",   'Name': "Data Manipulation",'Visibility': 1, 'Expertise': 3},
                5: {'Photo': "Photos/Photo Editing.png",        'Name': "Photo Editing",    'Visibility': 1, 'Expertise': 3}              
            },
            3 : {   // Tools
                0: {'Photo': "Photos/VS Code.jpeg",         'Name': "VS Code",          'Visibility': 0, 'Expertise': 1},             
                1: {'Photo': "Photos/IntelliJ IDEA.jpeg",   'Name': "IntelliJ IDEA",    'Visibility': 0, 'Expertise': 1},    
                2: {'Photo': "Photos/GitHub.png",           'Name': "GitHUB",           'Visibility': 0, 'Expertise': 1},            
                3: {'Photo': "Photos/Unreal Engine.jpg",    'Name': "Unreal Engine 4",  'Visibility': 0, 'Expertise': 1},        
                4: {'Photo': "Photos/Blender.png",          'Name': "Blender",          'Visibility': 1, 'Expertise': 2},
                5: {'Photo': "Photos/Photoshop.png",        'Name': "Photoshop CC",     'Visibility': 1, 'Expertise': 3},              
                6: {'Photo': "Photos/Android Studio.jpg",   'Name': "Android Studio",   'Visibility': 1, 'Expertise': 2},             
                7: {'Photo': "Photos/Ubuntu.png",           'Name': "Ubuntu",           'Visibility': 1, 'Expertise': 3}              
            }
        },
        {   // 4.1 Projects
            0 : {    // 4.1.1 Machine Learning
                0: {
                    'Picture': "Photos/Python.jpg", 
                    'Link': 'https://github.com/Shakleen/Artificial-Intelligence-Algorithms', 
                    'Name': 'Case Studies', 
                    'Scale': 2, 
                    'Description': "A collection of the case studies I've done", 
                    'Tools': "Python 3, NumPy, Pandas, MatPlotLib, TensorFlow", 
                    'Colab': 'Individual'
                },
            },

            1: {    // 4.1.1 Application Development
                0: {
                    'Picture': "Photos/java.jpg", 
                    'Link': 'https://github.com/Shakleen/Project_Medicinae', 
                    'Name': 'Project Medicinae', 
                    'Scale': 2, 
                    'Description': "A java application for inputting, storing and backing up data in cloud.", 
                    'Tools': "Java, JavaFX, Oracle SQL, Google Drive API, CSS", 
                    'Colab': 'Individual'
                },
                1: {
                    'Picture': "Photos/java.jpg", 
                    'Link': "https://github.com/IshrakAbedin/Attendance-System", 
                    'Name': 'Attendance System', 
                    'Scale': 2, 
                    'Description': "A java application for automating the process of taking attendance.", 
                    'Tools': "Java, JavaFX, Oracle SQL, CSS", 
                    'Colab': 'Team'
                }
            },

            2: {    // 4.1.2 Game Development
                0: {
                    'Picture': "Photos/Unreal Engine.jpg", 
                    'Link': 'https://github.com/Red-Rebels/ProjectBytes', 
                    'Name': 'Project Bytes', 
                    'Scale': 1, 
                    'Description': "A survival horror game developed using Unreal Engine 4 and C++.", 
                    'Tools': "C++, Unreal Engine 4, AutoDesk Maya, GIMP 2, Adobe Premiere Pro", 
                    'Colab': 'Team'
                },
                1: {
                    'Picture': "Photos/Unreal Engine.jpg", 
                    'Link': "https://github.com/Shakleen/Pickup-Game", 
                    'Name': 'Battery and Bombs', 
                    'Scale': 3, 
                    'Description': "A survival game developed using C++ and Unreal Engine 4.", 
                    'Tools': "C++, Unreal Engine 4, GIMP 2", 
                    'Colab': 'Individual'
                },
                2: {
                    'Picture': "Photos/Unreal Engine.jpg", 
                    'Link': "https://github.com/Shakleen/Endless-Runner-Project-UE4", 
                    'Name': 'Endless Runner', 
                    'Scale': 3, 
                    'Description': "An endless runner game developed using unreal engine 4 and its blueprint system.", 
                    'Tools': "Unreal Engine 4", 
                    'Colab': 'Individual'
                }
            },

            3: {    // 4.1.3 Web Development
                0: {
                    'Picture': "Photos/JavaScript.jpg", 
                    'Link': 'https://github.com/Shakleen/Project_Medicinae', 
                    'Name': 'Project Medicinae', 
                    'Scale': 2, 
                    'Description': "A java application for inputting, storing and backing up data in cloud.", 
                    'Tools': "Java, JavaFX, Oracle SQL, Google Drive API, CSS", 
                    'Colab': 'Individual'
                },
                1: {
                    'Picture': "Photos/JavaScript.jpg", 
                    'Link': "https://github.com/IshrakAbedin/Attendance-System", 
                    'Name': 'Attendance System', 
                    'Scale': 2, 
                    'Description': "A java application for automating the process of taking attendance.", 
                    'Tools': "Java, JavaFX, Oracle SQL, CSS", 
                    'Colab': 'Team'
                },
                2: {
                    'Picture': "Photos/JavaScript.jpg", 
                    'Link': "https://github.com/IshrakAbedin/Attendance-System", 
                    'Name': 'Attendance System', 
                    'Scale': 2, 
                    'Description': "A java application for automating the process of taking attendance.", 
                    'Tools': "Java, JavaFX, Oracle SQL, CSS", 
                    'Colab': 'Team'
                }
            },
        }
    ]
];

for (var i = 0; i < $('.attribute-container').length; ++i){
    // Getting the necessary stuff
    var attributeTemp = $('.attribute-container')[i];
    var headerTemp = $(attributeTemp).find('div.attribute-header');
    var contentFullTemp = $(attributeTemp).find('div.attribute-content');

    // Adding attribute title and line
    $(headerTemp).find('h1.HeadingTitle').text(AttributeValues[0][i]);
    $(headerTemp).find('p.HeadingParam').text(AttributeValues[1][i]);

    // Adding description
    if (i <= 1){
        $(headerTemp).append(HeadingDesc);
        $(headerTemp).find('span.HeadingDescC').text(AttributeValues[2][i][1]);
        $(headerTemp).find('span.HeadingDescF').text(AttributeValues[2][i][2]);
        $(headerTemp).find('span.HeadingDescP').text(AttributeValues[2][i][3]);
    }

    // Dealing with content related portion
    $(contentFullTemp).html(fullDiv + fullDiv);

    var contentHalfTemp = $(contentFullTemp).find('div.content-half');
    $(contentHalfTemp).html(halfDiv + halfDiv);

    var contentQuarterTemp = $(contentHalfTemp).find('div.Quarter');
    $(contentQuarterTemp).html(Quarter);

    var quarterHeadingTemp = $(contentQuarterTemp).find('h1.quarter-heading');
    var quarterContentTemp = $(contentQuarterTemp).find('div.quarter-content');
    for (var j = 0; j < contentQuarterTemp.length; ++j){
        $(quarterHeadingTemp[j]).text(AttributeValues[3][i][j]);
        
        if (i == 0)          SetupSkill(i, j, quarterContentTemp[j])
        else if (i === 1)    SetupProject(i, j, quarterContentTemp[j]);
        else if (i === 2)    HandleEducation(j, quarterContentTemp[j]);
        else if (i === 3)    HandleAchievement(j, quarterContentTemp[j]);
    }
}


function SetupSkill(i, j, QuarterObj){
    var Level = {
        1: ' circle-border-success',
        2: ' circle-border-warning',
        3: ' circle-border-danger'
    };

    var Values = AttributeValues[4][i][j];
    for (var k = 0; k < Object.keys(Values).length; ++k){
        var string = '<div class="col-6 col-lg-3 quarter-content-val' + ((Values[k]['Visibility'] === 1) ? ' Invisible HiddenCell' : '') + '">' +
                        '<img class="img-fluid rounded-circle img-cells' + ((Values[k]['Expertise'] > 0) ? Level[ Values[k]['Expertise'] ] : '') + '" src="' + Values[k]['Photo'] + '">' +
                        '<p class="param-cells">' + Values[k]['Name'] + '</p>' +
                    '</div>';
        $(QuarterObj).append(string);
    }
}

function SetupProject(i, j, QuarterObj){
    var Scale = {
        1: 'Large Scale (> 2 months)',
        2: 'Medium Scale (1 - 2 months)',
        3: 'Small Scale (< 1 month)'
    };
    var Level = {
        1: ' circle-border-success',
        2: ' circle-border-warning',
        3: ' circle-border-danger'
    };

    var Values = AttributeValues[4][i][j];
    for (var k = 0; k < Object.keys(Values).length; ++k){
        var string ='<div class="col-12 col-sm-4">' +
                        '<img class="img-fluid rounded-circle img-cells'  + Level[ Values[k]['Scale'] ] + '" src="' + Values[k]['Picture'] + '">' +
                        '<h5 class="card-title m-0 text-center"><a class="text-dark" href="' + Values[k]['Link'] + '">' + Values[k]['Name'] + '</a></h5>' +
                        '<div class="card text-dark HiddenCell Invisible text-left">' +
                            '<p class="card-text m-0">Time to complete: ' + Scale[ Values[k]['Scale'] ] + '</p>' + 
                            '<p class="card-text m-0">Project type: ' + Values[k]['Colab'] + '</p>' + 
                            '<p class="card-text m-0">' + Values[k]['Description'] + '</p>' + 
                            '<p class="card-text m-0">Key Components used:' + Values[k]['Tools'] + '</p>' +
                        '</div>'
                    '</div>';
        
        $(QuarterObj).append(string);
    }
    $(QuarterObj).addClass('justify-content-center');
}



// Education portion
function HandleEducation(i, QuarterObj){
    if (i == 0) {      // Institutional Education
        SetupEducationQuarter(
            [
                "Photos/IUT Logo.png",
                "Photos/Notre Dame College.jpg",
                "Photos/UB.png"
            ],
            [
                "Islamic University of Technology",
                "Notre Dame College",
                "Udayan Higher Secondary School"
            ],
            [
                "Computer Science and Technology",
                "Science",
                "Science"
            ],
            [
                "Grades: CGPA 3.91",
                "Grades: GPA 5",
                "Grades: GPA 5"
            ],
            [
                "Relevant courses: Structured Programming using C, Object Oriented Programming using C++, Visual Programming using Java, Data Structures, Algorithms",
                "Relevant courses: Physics I & II, Chemistry I & II, Biology I & II, ICT, Higher Mathematics I & II",
                ""
            ],
            [
                1, 1, 1
            ],
            $(QuarterObj)
        )
    } else if (i == 1) {    // Institutional Education
        SetupEducationQuarter(
            [
                "https://media.licdn.com/dms/image/C510BAQFKXnLDglG5qA/company-logo_200_200/0?e=2159024400&v=beta&t=QKdDCJSmbaDE2mkA5ndgR407zzyfU4QEZQ0Hd769vBI",
                "data:image/png;base64,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",
                "data:image/png;base64,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"
            ],
            [
                "Udemy",
                "Coursera",
                "Udacity"
            ],
            [
                "Development courses",
                "Theoretical courses",
                "Development courses"
            ],
            [
                "Total courses taken: +10",
                "Total courses taken: 2",
                "Total courses taken: 2"
            ],
            [
                "Relevant courses: Python Developer course, Machine Learning A-Z, Unreal Engine Developer Course, Blender Modelling course, Web Developer Bootcamp, Dart and Flutter Developer course",
                "Relevant courses: Machine Learning, Blockchain Fundamentals",
                "Relevant courses: Data Structures and algorithms using python, Learning Python for data science"
            ],
            [
                1, 1, 1
            ],
            $(QuarterObj)
        )
    } else if (i == 2) {    // Institutional Education
        SetupEducationQuarter(
            [
                "https://pbs.twimg.com/profile_images/942929348327194624/IxwXYa82_400x400.jpg",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYBQ3xeE3ahd4X6O7AJSeOfGyTmnUT4FDL7DckaFwkPxA0-hki",
                "Photos/Kaggle.png"
            ],
            [
                "Hacker Rank",
                "Hacker Earth",
                "Kaggle"
            ],
            [
                "Problem Solving Practice",
                "Problem Solving Practice",
                "Machine Learning Practice"
            ],
            [
                "Solve Data Strucutre, Mathematics, Algorithms category problems.",
                "Solve Data Structure related problems.",
                "Learn about machine learning techniques through practice and online datasets."
            ],
            [
                "Achievements: Earner 3 stars in Problem solving, C++, Java, SQL and Python.",
                "Achievements: Solved 200+ Problems.",
                "Achievements: Participated in 5 contests."
            ],
            [
                1, 1, 1
            ],
            $(QuarterObj)
        )
    } else if (i == 3) {    // Institutional Education
        SetupEducationQuarter(
            [
                "data:image/png;base64,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",
                "https://pbs.twimg.com/profile_images/707979145045614594/Hidlx62E.jpg",
                "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/YouTube_social_white_square_%282017%29.svg/2000px-YouTube_social_white_square_%282017%29.svg.png"
            ],
            [
                "GeekForGeeks",
                "Topcoder",
                "YouTube"
            ],
            [
                "Reading about data structures and algorithms.",
                "Reading about data structures and algorithms.",
                "Looking up almost anything."
            ],
            [
                "Mostly helpful for competitive programming.",
                "Finding help on anything that's related to CS.",
                "Best place to find tutorials and explanations."
            ],
            [
                "",
                "",
                ""
            ],
            [
                1, 1, 1
            ],
            $(QuarterObj)
        )
    }
}

function SetupEducationQuarter(Images, Names, Degree, Grade, Info, Rounded, QuarterObj){
    for (var i = 0; i < Images.length; ++i){
        var string =    '<div class="col-10 col-sm-4">' + 
                            '<img class="img-fluid img-cells' + ((Rounded[i] === 1) ? ' rounded-circle': '') + '" src="' + Images[i] + '">' +
                            '<div class="card text-dark HiddenCell Invisible text-left">' + 
                            '<div class="card-body">' +
                                    '<h4 class="card-title text-center">' + Names[i] + '</h4>' +
                                    '<p class="card-text">' + Degree[i] + '</p>' +
                                    '<p class="card-text">' + Grade[i] + '</p>' +
                                    '<p class="card-text d-none d-md-block">' + Info[i] + '</p>' +
                                '</div>' +
                            '</div>' +
                        '</div>';
        $(QuarterObj).append(string);
    }
    $(QuarterObj).addClass('justify-content-center');
}

// Achievements portion
function HandleAchievement(i, QuarterObj){
    if (i == 0) {
        SetupAchievementQuarter(
            [
                "https://icpc.baylor.edu/ICPCID/D04Q940071MD",
                "#",
                "#"
            ],
            [
                "ACM ICPC Dhaka Regional Programming Contest",
                "Inter University Programming Contest",
                "Inter University Programming Contest"
            ],
            [
                "University of Asia Pacific",
                "Shahjalal University of Science and Technology",
                "Islamic University of Technology"
            ],
            [
                "November, 2017",
                "August, 2017",
                "October, 2017"
            ],
            [
                "29th",
                "Top 50",
                "Top 30"
            ],
            [
                0, 0, 0
            ],
            $(QuarterObj)
        );
    } else if (i == 1) {
        SetupAchievementQuarter(
            [
                "https://drive.google.com/open?id=1wXcCv2lAZHlX9eyCkvzQIXpWMnINGC8-",
            ],
            [
                "National Robotech Festival 2017",
            ],
            [
                "North South University",
            ],
            [
                "December, 2017"
            ],
            [
                "Runners Up"
            ],
            [
                0
            ],
            $(QuarterObj)
        );
    }  else if (i == 2) {
        SetupAchievementQuarter(
            [
                "https://drive.google.com/open?id=1wXcCv2lAZHlX9eyCkvzQIXpWMnINGC8-",
                "https://www.udemy.com/certificate/UC-4XXJCOUV/",
                "https://drive.google.com/file/d/1lt9zEvQWy92ZK9GMJRewzbAabeQetOoO/view",
                "https://www.udemy.com/certificate/UC-ZC2VDD0C/",
                "https://www.udemy.com/certificate/UC-84EZZ40Y/",
                "https://www.udemy.com/certificate/UC-V8FD6VKW/"
            ],
            [
                "Machine Learning",
                "Android Developer Course",
                "Programming Training Camp",
                "Deep Learning Pre-requisites",
                "Machine Learning A-Z",
                "Dart Programing language"
            ],
            [
                "Coursera",
                "Udemy",
                "Bangladesh Advanced Computing Society",
                "Udemy",
                "Udemy",
                "Udemy"
            ],
            [
                "December, 2018",
                "December, 2018",
                "September, 2017",
                "December, 2018",
                "December, 2018",
                "December, 2018"
            ],
            [
                "",
                "",
                "",
                "",
                "",
                ""
            ],
            [
                0, 0, 0, 1, 1, 1
            ],
            $(QuarterObj)
        );
    } 
}

function SetupAchievementQuarter(Links, Names, Host, Date, Rank, Hidden, QuarterObj){
    for (var i = 0; i < Links.length; ++i){
        var string =    '<div class="col-10 col-sm-4' + ((Hidden[i] === 1) ? ' HiddenCell Invisible': '') + '">' + 
                            '<div class="card text-dark text-left">' + 
                            '<h4 class="card-title text-center"><a href="' + Links[i] +'">' + Names[i] + '</a></h4>' +
                                '<div class="card-body HiddenCell Invisible">' +
                                    '<p class="card-text">' + Host[i] + '</p>' +
                                    '<p class="card-text">' + Date[i] + '</p>' +
                                    '<p class="card-text d-none d-md-block">' + Rank[i] + '</p>' +
                                '</div>' +
                            '</div>' +
                        '</div>';
        $(QuarterObj).append(string);
    }
    $(QuarterObj).addClass('justify-content-center');
}

// ====================================================================================================
// Working with the content portion
// First the title and the short line is added to the header.
// Then depending on the attribute the descriptions are added. 
// All the texts for an attribute can be found in the Attribute text variable.
// ====================================================================================================




// Effects
$('.Quarter').on('click', function(){
    var sibliings = $(this).parent().children();

    for (var i = 0; i < sibliings.length; ++i){
        if (sibliings[i] !== this){
            $(sibliings[i]).toggleClass('ShrinkQuarter Invisible');
        } else {
            $(sibliings[i]).toggleClass('ExtendQuarter');
        }
    }
});

$('.content-half').on('click', function(event){
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