let initCharacter = function(pseudoParam, jobParam){

let pseudo = 67;
let job = "boulanger";

if(pseudoParam){
    pseudo = pseudoParam;
}
if(jobParam){
    job = jobParam;
}
console.log("pseudo = "+pseudo);
console.log("job = "+job);

}

initCharacter();
initCharacter("Richar Aladana","Boxer")


let titleElement = document.querySelector("h2");
titleElement.innerText = "Welcome to "+pseudo+" the "+ job;

let initFight = function(){
    let startingLifePointsInput = document.getElementById("startingLifePoints");

    let currentFight = {
        startingLifePoints: startingLifePointsInput.value
    };

    if(currentFight.startingLifePoints > 0){
        console.log("Starting life points  = "+ currentFight.startingLifePoints);
        document.getElementById("userLifePoints").innerText = currentFight.startingLifePoints;
        document.getElementById("aiLifePoints").innerText = currentFight.startingLifePoints;

        currentFight.aiActionsArray = [];
    } else {
        console.error("erreur, life input is negative");
    }
};

window.onload = function () { // Faire en sorte que le html soit complétement chargé
    //Code for events will be here !
    let beginFightButton = document.getElementById("beginFight");
    beginFightButton.onclick = function(){
        initCharacter("Richar Aladana","Boxer");
        initFight();
    }


 };
 