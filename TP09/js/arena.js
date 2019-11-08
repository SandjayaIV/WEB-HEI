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

window.onload = function () { // Faire en sorte que le html soit complétement chargé
    //Code for events will be here !
    let beginFightButton = document.getElementById("beginFight");
    beginFightButton.onclick = function(){
        initCharacter("Richar Aladana","Boxer");
    }


 };
 