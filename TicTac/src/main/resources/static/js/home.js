// alert("connected js");

console.log("Testing 123");

function startNewGame(){
    /// needs to return and save game id to be used while playing
    console.log("new Game");

    $.ajax({
        url:'http://localhost:8080/api/begin',
        method: 'GET',
        success: function (id){
        loadGame(id);
        console.log(id);
        },
        error: function(a,b,c){
        console.log(a);
        }
    });
}

function loadGame(id){

console.log("loading game  " +id);

    $.ajax({
        url: "http://localhost:8080/api/gamestate/" +id,
        method: 'GET',
        success: function (data){
        console.log(data);
        loadBoard (data);
    },
         error: function(a,b,c){
         console.log(a);
         }
    });
}

function loadBoard(board){
/// display the game board data on the page with jquery
console.log(data);
return 10;
}

function makeYourMove(){
    let square = $("#move").val();
        if(square === null||square === ""||square === " "){
            alert("please pick a number / square to place your X ")}
            console.log("are you sure that you want square # _"+square+ " _?")
    }


function saveYourGame(){
    console.log("saved for now")
}