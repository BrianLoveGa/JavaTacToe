// alert("connected js");

console.log("Testing 123");

function startNewGame(){
    /// needs to return and save game id to be used while playing
    console.log("new Game");

    $.ajax({
        url:'http://localhost8080/api/newgame',
        success: function (yourGame){
        console.log(yourGame);
        },
        error: function(a,b,c){
        console.log(a);
        }
    });
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