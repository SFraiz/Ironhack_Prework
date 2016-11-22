var user = {};
var responses = [];

function question1() {
    var name = prompt('What is your name?');
    user.name = name;
}
question1();

function question2() {
    var response = confirm('¿Te gusta la película de Los Vengadores?');
    responses.push(response);
}
question2();

function question3() {
    var response = prompt('¿Sabes qué Vengador es verde? (IronMan, Hulk, Thor)');
    var lowerCaseResponse = response.toLowerCase();

    switch (lowerCaseResponse) {
        case 'ironman':
            responses.push(false);
            break;
        case 'hulk':
            responses.push(true);
            break;
        case 'thor':
            responses.push(false);
            break;
        default:
            responses.push(false);
    }
}
question3();

function showResults(results) {
    console.log( results );
}

function evaluate(responsesArray) {

// declare two variables to store the totals
    var corrects = 0;
    var incorrects = 0;

// populate the “totals” variables from the “responsesArray”

    for(var i = 0; i < responses.length; i++) {
        if ( responses[i] == true ) {
            corrects++;
        } else {
            incorrects++;
        }
    }
    console.log( 'corrects: ' + corrects );
    console.log( 'incorrects: ' + incorrects );

// save the “totals” variables inside the user object
    user.corrects = corrects;
    user.incorrects = incorrects;
// call showResults
    showResults(user)
}

evaluate(responses);